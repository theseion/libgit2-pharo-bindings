libgit - calls
repository_new: out
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_repository_new(LGitRepository * * out)) options: #(  )