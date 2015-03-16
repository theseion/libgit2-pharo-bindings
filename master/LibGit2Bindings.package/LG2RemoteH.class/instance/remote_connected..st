foreign interface
remote_connected: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_connected(LG2GitRemoteO remote)) options: #(  )