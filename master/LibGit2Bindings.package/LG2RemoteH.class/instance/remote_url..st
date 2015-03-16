foreign interface
remote_url: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_remote_url(LG2GitRemoteO remote)) options: #(  )