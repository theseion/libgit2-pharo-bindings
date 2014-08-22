foreign interface
packbuilder_free: pb 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_packbuilder_free(LG2GitPackbuilderO pb)) options: #(  )