foreign interface
reference_foreach_name: repo callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_foreach_name(LG2GitRepositoryO repo, LG2GitReferenceForeachNameCb callback, NBVoid * payload)) options: #( optMayGC )