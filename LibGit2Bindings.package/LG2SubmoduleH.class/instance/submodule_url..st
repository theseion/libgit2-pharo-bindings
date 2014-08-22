foreign interface
submodule_url: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_submodule_url(LG2GitSubmoduleO submodule)) options: #(  )