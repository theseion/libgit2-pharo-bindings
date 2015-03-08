foreign interface
submodule_fetch_recurse_submodules: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_submodule_recurse_t git_submodule_fetch_recurse_submodules(LG2GitSubmoduleO submodule)) options: #(  )