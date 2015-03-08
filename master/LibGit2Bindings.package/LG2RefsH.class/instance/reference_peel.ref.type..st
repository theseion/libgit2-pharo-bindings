foreign interface
reference_peel: out ref: ref type: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_peel(LG2GitObjectO * out, LG2GitReferenceO ref, git_otype type)) options: #(  )