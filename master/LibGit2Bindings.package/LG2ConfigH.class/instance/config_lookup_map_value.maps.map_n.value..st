foreign interface
config_lookup_map_value: out maps: maps map_n: map_n value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_lookup_map_value(NBInt32 * out, git_cvar_map * maps, NBInt32 map_n, NBExternalString value)) options: #(  )