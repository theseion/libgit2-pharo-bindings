foreign interface
remote_set_callbacks: remote callbacks: callbacks 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_set_callbacks(LG2GitRemoteO remote, git_remote_callbacks * callbacks)) options: #(  )