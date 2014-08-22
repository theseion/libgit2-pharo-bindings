foreign interface
remote_set_transport: remote transport: transport 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_set_transport(LG2GitRemoteO remote, git_transport * transport)) options: #(  )