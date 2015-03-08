foreign interface
submodule_path: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_submodule_path(LG2GitSubmoduleO submodule)) options: #(  )