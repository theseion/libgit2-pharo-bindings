libgit - calls
reference_set_target: out ref: ref id: id signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_reference_set_target(LGitReference * out, self, LGitId * id, LGitSignature * signature, String log_message)) options: #(  )