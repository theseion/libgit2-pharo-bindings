libgit - calls
reference_symbolic_create: out repo: repo name: name target: target force: force signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_reference_symbolic_create(LGitReference * self, LGitRepository repo, String name, String target, Boolean force, LGitSignature * signature, String log_message)) options: #(  )