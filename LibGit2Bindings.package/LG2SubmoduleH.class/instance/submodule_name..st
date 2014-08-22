foreign interface
submodule_name: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_submodule_name(LG2GitSubmoduleO submodule)) options: #(  )