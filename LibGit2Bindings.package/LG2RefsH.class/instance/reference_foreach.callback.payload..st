foreign interface
reference_foreach: repo callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_foreach(LG2GitRepositoryO repo, LG2GitReferenceForeachCb callback, NBVoid * payload)) options: #( optMayGC )