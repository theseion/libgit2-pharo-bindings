foreign interface
submodule_owner: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitRepositoryO git_submodule_owner(LG2GitSubmoduleO submodule)) options: #(  )