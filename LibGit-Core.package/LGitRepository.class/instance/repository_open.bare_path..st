libgit - calls
repository_open: out bare_path: bare_path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_repository_open(LGitRepository * out, String bare_path)) options: #(  )