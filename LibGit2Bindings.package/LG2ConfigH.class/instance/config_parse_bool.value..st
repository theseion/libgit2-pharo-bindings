foreign interface
config_parse_bool: out value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_parse_bool(NBInt32 * out, NBExternalString value)) options: #(  )