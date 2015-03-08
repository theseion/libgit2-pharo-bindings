foreign interface
repository_fetchhead_foreach: repo callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_fetchhead_foreach(LG2GitRepositoryO repo, LG2GitRepositoryFetchheadForeachCb callback, NBVoid * payload)) options: #( optMayGC )