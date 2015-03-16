foreign interface
note_free: note 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_note_free(LG2GitNoteO note)) options: #(  )