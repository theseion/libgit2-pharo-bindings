foreign interface
config_set_int64: cfg name: name value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_set_int64(LG2GitConfigO cfg, NBExternalString name, int64_t value)) options: #(  )