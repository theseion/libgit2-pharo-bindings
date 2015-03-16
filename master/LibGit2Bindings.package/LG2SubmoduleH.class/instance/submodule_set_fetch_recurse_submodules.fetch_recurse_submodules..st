foreign interface
submodule_set_fetch_recurse_submodules: submodule fetch_recurse_submodules: fetch_recurse_submodules 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_submodule_recurse_t git_submodule_set_fetch_recurse_submodules(LG2GitSubmoduleO submodule, git_submodule_recurse_t fetch_recurse_submodules)) options: #(  )