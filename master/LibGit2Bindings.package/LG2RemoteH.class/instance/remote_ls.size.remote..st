foreign interface
remote_ls: out size: size remote: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_ls(git_remote_head * * * out, NBInt32 * size, LG2GitRemoteO remote)) options: #(  )