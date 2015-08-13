libgit-calls
remote_delete: repo name: name
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_remote_delete(LGitRepository repo, NBExternalString name))
		options: #(  )