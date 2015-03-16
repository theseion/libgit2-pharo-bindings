foreign interface
reference_is_note: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_is_note(LG2GitReferenceO ref)) options: #(  )