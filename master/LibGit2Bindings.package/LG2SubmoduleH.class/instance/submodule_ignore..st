foreign interface
submodule_ignore: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_submodule_ignore_t git_submodule_ignore(LG2GitSubmoduleO submodule)) options: #(  )