foreign interface
config_refresh: cfg 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_refresh(LG2GitConfigO cfg)) options: #(  )