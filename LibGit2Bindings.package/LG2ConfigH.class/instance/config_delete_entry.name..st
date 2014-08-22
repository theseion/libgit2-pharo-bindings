foreign interface
config_delete_entry: cfg name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_delete_entry(LG2GitConfigO cfg, NBExternalString name)) options: #(  )