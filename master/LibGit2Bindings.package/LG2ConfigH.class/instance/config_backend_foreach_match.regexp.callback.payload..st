foreign interface
config_backend_foreach_match: backend regexp: regexp callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_backend_foreach_match(LG2GitConfigBackendO backend, NBExternalString regexp, LG2GitConfigForeachCb callback, NBVoid * payload)) options: #( optMayGC )