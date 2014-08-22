foreign interface
config_foreach: cfg callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_foreach(LG2GitConfigO cfg, LG2GitConfigForeachCb callback, NBVoid * payload)) options: #( optMayGC )