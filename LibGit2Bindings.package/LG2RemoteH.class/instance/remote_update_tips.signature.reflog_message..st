foreign interface
remote_update_tips: remote signature: signature reflog_message: reflog_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_update_tips(LG2GitRemoteO remote, git_signature * signature, NBExternalString reflog_message)) options: #(  )