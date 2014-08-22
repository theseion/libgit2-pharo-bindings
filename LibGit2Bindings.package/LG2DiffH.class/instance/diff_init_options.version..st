foreign interface
diff_init_options: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_init_options(git_diff_options * opts, NBInt32 version)) options: #(  )