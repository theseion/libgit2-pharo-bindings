foreign interface
branch_create: out repo: repo branch_name: branch_name target: target force: force signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_branch_create(LG2GitReferenceO * out, LG2GitRepositoryO repo, NBExternalString branch_name, LG2GitCommitO target, NBInt32 force, git_signature * signature, NBExternalString log_message)) options: #(  )