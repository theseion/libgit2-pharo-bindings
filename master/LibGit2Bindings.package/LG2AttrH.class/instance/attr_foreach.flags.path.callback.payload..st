foreign interface
attr_foreach: repo flags: flags path: path callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_attr_foreach(LG2GitRepositoryO repo, uint32_t flags, NBExternalString path, LG2GitAttrForeachCb callback, NBVoid * payload)) options: #( optMayGC )