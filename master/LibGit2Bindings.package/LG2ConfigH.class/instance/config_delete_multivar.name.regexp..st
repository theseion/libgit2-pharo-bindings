foreign interface
config_delete_multivar: cfg name: name regexp: regexp 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_delete_multivar(LG2GitConfigO cfg, NBExternalString name, NBExternalString regexp)) options: #(  )