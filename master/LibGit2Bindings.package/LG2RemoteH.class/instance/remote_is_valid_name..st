foreign interface
remote_is_valid_name: remote_name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_is_valid_name(NBExternalString remote_name)) options: #(  )