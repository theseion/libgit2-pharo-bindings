foreign interface
config_new: out 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_new(LG2GitConfigO * out)) options: #(  )