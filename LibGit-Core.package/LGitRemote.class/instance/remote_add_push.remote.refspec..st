libgit-calls
remote_add_push: repo remote: remote refspec: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(#LGitReturnCodeEnum git_remote_add_push(LGitRepository repo, NBExternalString remote, NBExternalString refspec))
		options: #(  )