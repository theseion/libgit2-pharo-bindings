libgit-calls
repository_index: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_repository_index(LGitIndex * out, self)) options: #(  )