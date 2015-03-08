foreign interface
reference_cmp: ref1 ref2: ref2 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_cmp(LG2GitReferenceO ref1, LG2GitReferenceO ref2)) options: #(  )