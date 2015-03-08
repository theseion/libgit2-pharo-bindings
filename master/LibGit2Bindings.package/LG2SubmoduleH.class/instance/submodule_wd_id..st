foreign interface
submodule_wd_id: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_submodule_wd_id(LG2GitSubmoduleO submodule)) options: #(  )