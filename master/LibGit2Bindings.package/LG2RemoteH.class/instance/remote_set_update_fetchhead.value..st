foreign interface
remote_set_update_fetchhead: remote value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_remote_set_update_fetchhead(LG2GitRemoteO remote, NBInt32 value)) options: #(  )