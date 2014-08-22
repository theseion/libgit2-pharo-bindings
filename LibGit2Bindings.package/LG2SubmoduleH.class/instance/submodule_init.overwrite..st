foreign interface
submodule_init: submodule overwrite: overwrite 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_init(LG2GitSubmoduleO submodule, NBInt32 overwrite)) options: #(  )