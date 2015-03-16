foreign interface
remote_name: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_remote_name(LG2GitRemoteO remote)) options: #(  )