foreign interface
config_free: cfg 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_config_free(LG2GitConfigO cfg)) options: #(  )