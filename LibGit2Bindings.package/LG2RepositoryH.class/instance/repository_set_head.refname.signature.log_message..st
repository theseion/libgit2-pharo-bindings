foreign interface
repository_set_head: repo refname: refname signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_set_head(LG2GitRepositoryO repo, NBExternalString refname, git_signature * signature, NBExternalString log_message)) options: #(  )