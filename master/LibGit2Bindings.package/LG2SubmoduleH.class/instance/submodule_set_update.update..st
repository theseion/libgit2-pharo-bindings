foreign interface
submodule_set_update: submodule update: update 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_submodule_update_t git_submodule_set_update(LG2GitSubmoduleO submodule, git_submodule_update_t update)) options: #(  )