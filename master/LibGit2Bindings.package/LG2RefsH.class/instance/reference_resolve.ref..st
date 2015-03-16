foreign interface
reference_resolve: out ref: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_resolve(LG2GitReferenceO * out, LG2GitReferenceO ref)) options: #(  )