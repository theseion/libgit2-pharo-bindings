foreign interface
submodule_reload: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_reload(LG2GitSubmoduleO submodule)) options: #(  )