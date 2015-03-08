foreign interface
repository_mergehead_foreach: repo callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_mergehead_foreach(LG2GitRepositoryO repo, LG2GitRepositoryMergeheadForeachCb callback, NBVoid * payload)) options: #( optMayGC )