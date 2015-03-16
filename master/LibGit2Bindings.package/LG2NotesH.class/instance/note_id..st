foreign interface
note_id: note 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_note_id(LG2GitNoteO note)) options: #(  )