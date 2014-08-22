libgit - calls
remote_load: out repo: repo name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_remote_load(LGitRemote * out, LGitRepository repo, String name)) options: #(  )