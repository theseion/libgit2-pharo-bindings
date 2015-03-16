foreign interface
reference_delete: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_delete(LG2GitReferenceO ref)) options: #(  )