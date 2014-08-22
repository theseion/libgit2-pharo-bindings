foreign interface
config_set_string: cfg name: name regexp: regexp 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_set_string(LG2GitConfigO cfg, NBExternalString name, NBExternalString regexp)) options: #(  )