foreign interface
config_get_int32: out cfg: cfg name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_get_int32(int32_t * out, LG2GitConfigO cfg, NBExternalString name)) options: #(  )