foreign interface
repository_set_head_detached: repo commitish: commitish signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_set_head_detached(LG2GitRepositoryO repo, git_oid * commitish, git_signature * signature, NBExternalString log_message)) options: #(  )