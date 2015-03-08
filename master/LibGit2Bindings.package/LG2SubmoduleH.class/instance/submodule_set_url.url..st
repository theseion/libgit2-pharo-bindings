foreign interface
submodule_set_url: submodule url: url 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_set_url(LG2GitSubmoduleO submodule, NBExternalString url)) options: #(  )