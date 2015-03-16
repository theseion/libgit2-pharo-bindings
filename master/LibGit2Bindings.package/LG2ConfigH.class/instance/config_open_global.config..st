foreign interface
config_open_global: out config: config 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_open_global(LG2GitConfigO * out, LG2GitConfigO config)) options: #(  )