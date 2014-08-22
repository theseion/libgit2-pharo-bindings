foreign interface
note_remove: repo notes_ref: notes_ref author: author committer: committer oid: oid 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_note_remove(LG2GitRepositoryO repo, NBExternalString notes_ref, git_signature * author, git_signature * committer, git_oid * oid)) options: #(  )