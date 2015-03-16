foreign interface
remote_connect: remote direction: direction 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_connect(LG2GitRemoteO remote, git_direction direction)) options: #(  )