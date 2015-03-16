foreign interface
submodule_lookup: submodule repo: repo name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_lookup(LG2GitSubmoduleO * submodule, LG2GitRepositoryO repo, NBExternalString name)) options: #(  )