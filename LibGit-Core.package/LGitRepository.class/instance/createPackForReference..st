private
createPackForReference: aReference
	| odb walker packbuilder oid writepack stats packbuilderPayload |
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
	
	writepack := LG2GitOdbWritepackS new.
	LG2OdbH uniqueInstance
	odb_write_pack: writepack
	db: odb
	progress_cb: (LG2GitTransferProgressCallback on: [ :progress :data | 0 ])
	progress_payload: NBExternalAddress null.

	writepack := writepack fromPointer.
	stats := LG2GitTransferProgressS externalNew.
	packbuilderPayload := LG2GitPackbuilderForeachPayloadS externalNew.

	packbuilderPayload
		writepack: writepack;
		stats: stats.
	LG2PackH uniqueInstance
		packbuilder_foreach: packbuilder
		cb: (LG2GitPackbuilderForeachCb on: [ :buffer :length :payload |
			payload writepack append writepack: writepack buffer: buffer length: length progress: payload stats ])
		payload: packbuilderPayload.

	writepack commit writepack: writepack progress: stats.


	writepack free writepack: writepack.
	LG2PackH uniqueInstance packbuilder_free: packbuilder.
	LG2RevwalkH uniqueInstance revwalk_free: walker