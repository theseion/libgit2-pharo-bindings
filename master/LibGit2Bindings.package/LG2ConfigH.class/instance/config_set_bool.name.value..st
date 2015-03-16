foreign interface
config_set_bool: cfg name: name value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_set_bool(LG2GitConfigO cfg, NBExternalString name, NBInt32 value)) options: #(  )