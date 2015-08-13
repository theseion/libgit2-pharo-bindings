libgit-calls
remote_add_fetch: repo remote: remote refspec: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(#LGitReturnCodeEnum git_remote_add_fetch(LGitRepository repo, NBExternalString remote NBExternalString refspec))
		options: #(  )