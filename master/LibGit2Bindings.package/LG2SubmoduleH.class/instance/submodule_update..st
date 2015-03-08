foreign interface
submodule_update: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_submodule_update_t git_submodule_update(LG2GitSubmoduleO submodule)) options: #(  )