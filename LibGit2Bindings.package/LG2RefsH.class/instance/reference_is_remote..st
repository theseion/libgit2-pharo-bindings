foreign interface
reference_is_remote: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_is_remote(LG2GitReferenceO ref)) options: #(  )