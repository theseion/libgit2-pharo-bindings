foreign interface
remote_pushurl: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_remote_pushurl(LG2GitRemoteO remote)) options: #(  )