foreign interface
submodule_branch: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_submodule_branch(LG2GitSubmoduleO submodule)) options: #(  )