foreign interface
remote_fetch: remote signature: signature reflog_message: reflog_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_fetch(LG2GitRemoteO remote, git_signature * signature, NBExternalString reflog_message)) options: #(  )