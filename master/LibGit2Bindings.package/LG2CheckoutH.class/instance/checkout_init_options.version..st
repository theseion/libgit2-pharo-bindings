foreign interface
checkout_init_options: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_checkout_init_options(git_checkout_options * opts, NBInt32 version)) options: #(  )