foreign interface
status_init_options: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_status_init_options(git_status_options * opts, NBInt32 version)) options: #(  )