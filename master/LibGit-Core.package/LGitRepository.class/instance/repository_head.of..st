libgit - calls
repository_head: reference of: repository 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_repository_head(LGitReference * reference, self))
		options: #()