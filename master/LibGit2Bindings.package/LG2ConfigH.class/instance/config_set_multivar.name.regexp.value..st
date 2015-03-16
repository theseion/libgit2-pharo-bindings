foreign interface
config_set_multivar: cfg name: name regexp: regexp value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_set_multivar(LG2GitConfigO cfg, NBExternalString name, NBExternalString regexp, NBExternalString value)) options: #(  )