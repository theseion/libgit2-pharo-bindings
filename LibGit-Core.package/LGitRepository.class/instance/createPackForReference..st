private
createPackForReference: aReference
	| odb walker packbuilder oid writepack stats packbuilderPayload progresscb progressPayload packbuilderCallback |
	odb := self database.
	walker := LG2GitRevwalkO new.
	LG2RevwalkH uniqueInstance
		revwalk_new: walker
		repo: self.
	LG2RevwalkH uniqueInstance
		revwalk_sorting: walker
		sort_mode: 2.
	packbuilder := LG2GitPackbuilderO new.
	LG2PackH uniqueInstance
		packbuilder_new: packbuilder
		repo: self.
	LG2RevwalkH uniqueInstance
		revwalk_push_ref: walker
		refname: aReference name.

	oid := LGitId new.
	[ (LG2RevwalkH uniqueInstance
		revwalk_next: oid
		walk: walker) isZero ] whileTrue: [
			| commit tree |
			commit := LGitCommit fromId: oid of: self.
			tree := commit tree.
			LG2PackH uniqueInstance
				packbuilder_insert_commit: packbuilder id: commit id;
				packbuilder_insert_tree: packbuilder id: tree id.
			commit free.
			tree free ].
	progresscb := LG2GitTransferProgressCallback on: [ :progress :data | 0 ].
	progressPayload := NBExternalAddress null.
	writepack:= LG2GitOdbWritepackS externalNew.
	LG2OdbH uniqueInstance
	odb_write_pack: writepack
	db: odb
	progress_cb: progresscb
	progress_payload: progressPayload.

	writepack := LG2GitOdbWritepackS fromPointer: (NBExternalAddress value: (writepack address nbInt32AtOffset:0)).
	stats := LG2GitTransferProgressS externalNew.
	packbuilderPayload := LG2GitPackbuilderForeachPayloadS externalNew.

	packbuilderCallback := LG2GitPackbuilderForeachCb on: [ :buffer :length :payload |
		payload writepack append 
			writepack: payload writepack
			buffer: buffer
			length: length
			progress: payload stats ].
	packbuilderPayload
		writepack: writepack;
		stats: stats.

	LG2PackH uniqueInstance
		packbuilder_foreach: packbuilder
		cb: packbuilderCallback
		payload: packbuilderPayload.
		
	writepack commit writepack: writepack progress: stats.
	
	writepack free writepack: writepack.
	LG2PackH uniqueInstance packbuilder_free: packbuilder.
	LG2RevwalkH uniqueInstance revwalk_free: walker