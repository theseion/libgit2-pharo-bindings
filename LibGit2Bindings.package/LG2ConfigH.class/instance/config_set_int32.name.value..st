foreign interface
config_set_int32: cfg name: name value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_set_int32(LG2GitConfigO cfg, NBExternalString name, int32_t value)) options: #(  )