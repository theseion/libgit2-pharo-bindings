foreign interface
remote_save: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_save(LG2GitRemoteO remote)) options: #(  )