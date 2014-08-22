libgit - calls
reference_resolve: out ref: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_reference_resolve(LGitReference * out, self)) options: #(  )