foreign interface
submodule_set_ignore: submodule ignore: ignore 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_submodule_ignore_t git_submodule_set_ignore(LG2GitSubmoduleO submodule, git_submodule_ignore_t ignore)) options: #(  )