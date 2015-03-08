libgit - calls
reference_create: out repo: repo name: name id: id force: force signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_reference_create(LGitReference * self, LGitRepository repo, String name, LGitId * id, Boolean force, LGitSignature * signature, String log_message)) options: #( optCoerceNilToNull )