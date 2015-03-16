foreign interface
note_iterator_new: out repo: repo notes_ref: notes_ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_note_iterator_new(LG2GitNoteIteratorO * out, LG2GitRepositoryO repo, NBExternalString notes_ref)) options: #(  )