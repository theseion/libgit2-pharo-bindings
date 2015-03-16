foreign interface
remote_init_callbacks: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_init_callbacks(git_remote_callbacks * opts, NBInt32 version)) options: #(  )