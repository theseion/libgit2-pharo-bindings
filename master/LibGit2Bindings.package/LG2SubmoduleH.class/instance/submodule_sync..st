foreign interface
submodule_sync: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_sync(LG2GitSubmoduleO submodule)) options: #(  )