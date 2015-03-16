foreign interface
config_open_level: out parent: parent level: level 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_open_level(LG2GitConfigO * out, LG2GitConfigO parent, git_config_level_t level)) options: #(  )