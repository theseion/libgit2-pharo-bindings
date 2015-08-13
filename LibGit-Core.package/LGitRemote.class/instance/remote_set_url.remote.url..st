libgit-calls
remote_set_url: repo remote: remote url: urlString 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_remote_set_url(LGitRepository repo, NBExternalString remote, NBExternalString url)) options: #(  )