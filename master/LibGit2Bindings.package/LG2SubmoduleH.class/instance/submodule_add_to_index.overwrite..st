foreign interface
submodule_add_to_index: submodule overwrite: overwrite 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_add_to_index(LG2GitSubmoduleO submodule, NBInt32 overwrite)) options: #(  )