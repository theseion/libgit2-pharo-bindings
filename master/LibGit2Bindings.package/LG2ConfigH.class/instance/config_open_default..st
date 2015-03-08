foreign interface
config_open_default: out 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_open_default(LG2GitConfigO * out)) options: #(  )