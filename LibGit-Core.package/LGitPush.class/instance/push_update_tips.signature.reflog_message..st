libgit - calls
push_update_tips: push signature: signature reflog_message: reflog_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_push_update_tips(self, LGitSignature * signature, NBExternalString reflog_message)) options: #( optStringOrNull )