foreign interface
config_find_xdg: out 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_find_xdg(git_buf * out)) options: #(  )