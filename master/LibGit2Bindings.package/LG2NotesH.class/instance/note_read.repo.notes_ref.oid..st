foreign interface
note_read: out repo: repo notes_ref: notes_ref oid: oid 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_note_read(LG2GitNoteO * out, LG2GitRepositoryO repo, NBExternalString notes_ref, git_oid * oid)) options: #(  )