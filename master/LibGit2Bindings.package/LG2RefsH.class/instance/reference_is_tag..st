foreign interface
reference_is_tag: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_is_tag(LG2GitReferenceO ref)) options: #(  )