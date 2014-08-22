foreign interface
config_get_entry: out cfg: cfg name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_get_entry(git_config_entry * * out, LG2GitConfigO cfg, NBExternalString name)) options: #(  )