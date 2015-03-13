libgit-calls
repository_set_head: repo refname: refname signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(int git_repository_set_head(LGitRepository repo, String refname, LGitSignature * signature, String log_message)) options: #(  )