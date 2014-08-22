foreign interface
reference_type: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_ref_t git_reference_type(LG2GitReferenceO ref)) options: #(  )