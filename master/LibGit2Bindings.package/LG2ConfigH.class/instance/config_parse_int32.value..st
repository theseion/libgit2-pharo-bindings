foreign interface
config_parse_int32: out value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_parse_int32(int32_t * out, NBExternalString value)) options: #(  )