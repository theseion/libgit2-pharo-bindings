foreign interface
remote_update_fetchhead: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_update_fetchhead(LG2GitRemoteO remote)) options: #(  )