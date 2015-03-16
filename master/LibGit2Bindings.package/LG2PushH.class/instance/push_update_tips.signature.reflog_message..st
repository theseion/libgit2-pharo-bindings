foreign interface
push_update_tips: push signature: signature reflog_message: reflog_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_push_update_tips(LG2GitPushO push, git_signature * signature, NBExternalString reflog_message)) options: #(  )