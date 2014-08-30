libgit - calls
remote_update_tips: remote signature: signature reflog_message: reflog_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_remote_update_tips(self, LGitSignature * signature, String reflog_message)) options: #(  )