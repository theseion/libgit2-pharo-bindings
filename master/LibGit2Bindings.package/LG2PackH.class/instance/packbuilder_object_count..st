foreign interface
packbuilder_object_count: pb 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(uint32_t git_packbuilder_object_count(LG2GitPackbuilderO pb)) options: #(  )