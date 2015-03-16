foreign interface
config_find_global: out 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_find_global(git_buf * out)) options: #(  )