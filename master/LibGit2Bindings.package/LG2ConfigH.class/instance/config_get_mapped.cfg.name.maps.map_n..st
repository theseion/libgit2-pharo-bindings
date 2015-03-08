foreign interface
config_get_mapped: out cfg: cfg name: name maps: maps map_n: map_n 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_get_mapped(NBInt32 * out, LG2GitConfigO cfg, NBExternalString name, git_cvar_map * maps, NBInt32 map_n)) options: #(  )