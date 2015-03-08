libgit - calls
checkout_init_options: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(int git_checkout_init_options(LGitCheckoutOptions * opts, int version)) options: #(  )