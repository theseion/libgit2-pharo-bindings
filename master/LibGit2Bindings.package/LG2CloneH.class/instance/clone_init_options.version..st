foreign interface
clone_init_options: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_clone_init_options(git_clone_options * opts, NBInt32 version)) options: #(  )