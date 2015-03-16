foreign interface
tag_foreach: repo callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tag_foreach(LG2GitRepositoryO repo, LG2GitTagForeachCb callback, NBVoid * payload)) options: #( optMayGC )