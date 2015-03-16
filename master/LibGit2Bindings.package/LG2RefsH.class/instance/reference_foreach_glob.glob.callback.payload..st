foreign interface
reference_foreach_glob: repo glob: glob callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_foreach_glob(LG2GitRepositoryO repo, NBExternalString glob, LG2GitReferenceForeachNameCb callback, NBVoid * payload)) options: #( optMayGC )