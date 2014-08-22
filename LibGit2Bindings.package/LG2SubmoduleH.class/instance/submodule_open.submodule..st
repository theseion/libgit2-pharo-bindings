foreign interface
submodule_open: repo submodule: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_open(LG2GitRepositoryO * repo, LG2GitSubmoduleO submodule)) options: #(  )