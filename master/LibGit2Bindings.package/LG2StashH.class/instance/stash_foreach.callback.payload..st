foreign interface
stash_foreach: repo callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_stash_foreach(LG2GitRepositoryO repo, LG2GitStashCb callback, NBVoid * payload)) options: #( optMayGC )