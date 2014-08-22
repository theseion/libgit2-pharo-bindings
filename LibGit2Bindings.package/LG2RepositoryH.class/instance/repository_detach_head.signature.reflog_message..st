foreign interface
repository_detach_head: repo signature: signature reflog_message: reflog_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_detach_head(LG2GitRepositoryO repo, git_signature * signature, NBExternalString reflog_message)) options: #(  )