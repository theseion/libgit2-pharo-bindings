libgit - calls
repository_odb: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_repository_odb(LGitDatabase * out, self)) options: #(  )