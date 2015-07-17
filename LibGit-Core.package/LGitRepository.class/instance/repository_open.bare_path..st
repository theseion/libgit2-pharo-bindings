libgit-calls
repository_open: out bare_path: bare_path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		callUnchecked: #(#LGitReturnCodeEnum git_repository_open(LGitRepository * out, String bare_path)) 
		options: #(  )