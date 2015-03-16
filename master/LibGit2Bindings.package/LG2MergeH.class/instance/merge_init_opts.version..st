foreign interface
merge_init_opts: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_merge_init_opts(git_merge_opts * opts, NBInt32 version)) options: #(  )