foreign interface
note_next: note_id annotated_id: annotated_id it: it 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_note_next(git_oid * note_id, git_oid * annotated_id, LG2GitNoteIteratorO it)) options: #(  )