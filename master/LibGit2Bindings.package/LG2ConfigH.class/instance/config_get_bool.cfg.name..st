foreign interface
config_get_bool: out cfg: cfg name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_get_bool(NBInt32 * out, LG2GitConfigO cfg, NBExternalString name)) options: #(  )