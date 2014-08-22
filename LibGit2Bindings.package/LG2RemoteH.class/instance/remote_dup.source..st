foreign interface
remote_dup: dest source: source 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_dup(LG2GitRemoteO * dest, LG2GitRemoteO source)) options: #(  )