foreign interface
diff_find_init_options: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_find_init_options(git_diff_find_options * opts, NBInt32 version)) options: #(  )