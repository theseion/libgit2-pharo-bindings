foreign interface
config_get_multivar_foreach: cfg name: name regexp: regexp callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_get_multivar_foreach(LG2GitConfigO cfg, NBExternalString name, NBExternalString regexp, LG2GitConfigForeachCb callback, NBVoid * payload)) options: #( optMayGC )