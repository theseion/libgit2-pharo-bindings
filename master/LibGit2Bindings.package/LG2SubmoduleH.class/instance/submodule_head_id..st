foreign interface
submodule_head_id: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_submodule_head_id(LG2GitSubmoduleO submodule)) options: #(  )