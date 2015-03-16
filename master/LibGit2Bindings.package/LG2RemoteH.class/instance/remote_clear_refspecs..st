foreign interface
remote_clear_refspecs: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_remote_clear_refspecs(LG2GitRemoteO remote)) options: #(  )