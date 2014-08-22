foreign interface
config_foreach_match: cfg regexp: regexp callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_foreach_match(LG2GitConfigO cfg, NBExternalString regexp, LG2GitConfigForeachCb callback, NBVoid * payload)) options: #( optMayGC )