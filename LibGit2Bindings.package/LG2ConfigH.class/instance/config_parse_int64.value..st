foreign interface
config_parse_int64: out value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_parse_int64(int64_t * out, NBExternalString value)) options: #(  )