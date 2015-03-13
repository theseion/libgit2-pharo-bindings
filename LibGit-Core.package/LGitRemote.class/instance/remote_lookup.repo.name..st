libgit-calls
remote_lookup: out repo: repo name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_remote_lookup(LGitRemote * out, LGitRepository repo, String name)) options: #(  )