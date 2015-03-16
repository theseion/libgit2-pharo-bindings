foreign interface
repository_init_init_options: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_init_init_options(git_repository_init_options * opts, NBInt32 version)) options: #(  )