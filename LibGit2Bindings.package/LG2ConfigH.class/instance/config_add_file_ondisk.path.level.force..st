foreign interface
config_add_file_ondisk: cfg path: path level: level force: force 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_add_file_ondisk(LG2GitConfigO cfg, NBExternalString path, git_config_level_t level, NBInt32 force)) options: #(  )