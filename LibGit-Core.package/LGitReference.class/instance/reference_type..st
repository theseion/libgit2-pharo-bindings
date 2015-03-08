libgit - calls
reference_type: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReferenceTypeEnum git_reference_type(self)) options: #(  )