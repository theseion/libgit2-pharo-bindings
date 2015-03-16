foreign interface
submodule_status: location_status submodule: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_status(NBUInt32 * location_status, LG2GitSubmoduleO submodule)) options: #(  )