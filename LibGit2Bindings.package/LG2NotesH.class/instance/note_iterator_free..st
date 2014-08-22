foreign interface
note_iterator_free: it 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_note_iterator_free(LG2GitNoteIteratorO it)) options: #(  )