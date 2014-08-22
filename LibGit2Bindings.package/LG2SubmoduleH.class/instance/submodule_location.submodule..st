foreign interface
submodule_location: location_status submodule: submodule 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_location(NBUInt32 * location_status, LG2GitSubmoduleO submodule)) options: #(  )