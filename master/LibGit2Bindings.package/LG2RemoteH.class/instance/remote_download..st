foreign interface
remote_download: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_download(LG2GitRemoteO remote)) options: #(  )