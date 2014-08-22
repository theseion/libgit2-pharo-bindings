libgit - calls
remote_fetch: remote signature: signature reflog_message: reflog_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_remote_fetch(self, LG2GitSignatureS * signature, String reflog_message)) options: #(  )