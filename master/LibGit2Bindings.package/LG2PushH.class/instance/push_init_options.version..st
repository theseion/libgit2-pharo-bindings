foreign interface
push_init_options: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_push_init_options(git_push_options * opts, NBInt32 version)) options: #(  )