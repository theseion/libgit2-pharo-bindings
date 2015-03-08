foreign interface
submodule_save: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_save(LG2GitSubmoduleO submodule)) options: #(  )