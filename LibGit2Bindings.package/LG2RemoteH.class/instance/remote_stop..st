foreign interface
remote_stop: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_remote_stop(LG2GitRemoteO remote)) options: #(  )