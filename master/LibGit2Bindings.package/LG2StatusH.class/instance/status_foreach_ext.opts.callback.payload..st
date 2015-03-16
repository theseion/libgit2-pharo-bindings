foreign interface
status_foreach_ext: repo opts: opts callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_status_foreach_ext(LG2GitRepositoryO repo, git_status_options * opts, LG2GitStatusCb callback, NBVoid * payload)) options: #( optMayGC )