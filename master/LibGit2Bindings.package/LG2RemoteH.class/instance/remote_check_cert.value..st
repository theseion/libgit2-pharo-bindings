foreign interface
remote_check_cert: remote value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_remote_check_cert(LG2GitRemoteO remote, NBInt32 value)) options: #(  )