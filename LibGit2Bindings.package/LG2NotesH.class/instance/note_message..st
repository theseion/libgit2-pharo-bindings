foreign interface
note_message: note 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_note_message(LG2GitNoteO note)) options: #(  )