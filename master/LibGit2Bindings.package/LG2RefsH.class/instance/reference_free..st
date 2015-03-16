foreign interface
reference_free: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_reference_free(LG2GitReferenceO ref)) options: #(  )