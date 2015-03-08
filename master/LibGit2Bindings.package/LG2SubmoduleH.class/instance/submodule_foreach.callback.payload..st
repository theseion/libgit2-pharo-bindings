foreign interface
submodule_foreach: repo callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_foreach(LG2GitRepositoryO repo, LG2SubmoduleH1Cb callback, NBVoid * payload)) options: #( optMayGC )