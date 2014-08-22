foreign interface
remote_free: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_remote_free(LG2GitRemoteO remote)) options: #(  )