foreign interface
remote_valid_url: remote_name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_valid_url(NBExternalString remote_name)) options: #(  )