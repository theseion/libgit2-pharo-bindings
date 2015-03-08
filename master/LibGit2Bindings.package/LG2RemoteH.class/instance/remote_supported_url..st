foreign interface
remote_supported_url: remote_name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_supported_url(NBExternalString remote_name)) options: #(  )