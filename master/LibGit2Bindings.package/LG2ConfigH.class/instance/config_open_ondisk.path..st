foreign interface
config_open_ondisk: out path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_open_ondisk(LG2GitConfigO * out, NBExternalString path)) options: #(  )