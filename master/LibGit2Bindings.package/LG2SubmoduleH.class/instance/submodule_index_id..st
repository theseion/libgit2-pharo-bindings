foreign interface
submodule_index_id: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_submodule_index_id(LG2GitSubmoduleO submodule)) options: #(  )