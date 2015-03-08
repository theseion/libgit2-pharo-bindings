foreign interface
remote_disconnect: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_remote_disconnect(LG2GitRemoteO remote)) options: #(  )