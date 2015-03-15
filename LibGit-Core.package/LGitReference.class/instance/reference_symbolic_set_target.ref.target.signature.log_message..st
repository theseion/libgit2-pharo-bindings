libgit - calls
reference_symbolic_set_target: out ref: ref target: target signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_reference_symbolic_set_target(LGitReference * self, LGitReference ref, String target, LGitSignature * signature, String log_message)) options: #(  )