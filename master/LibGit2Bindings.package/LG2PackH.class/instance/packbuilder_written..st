foreign interface
packbuilder_written: pb 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(uint32_t git_packbuilder_written(LG2GitPackbuilderO pb)) options: #(  )