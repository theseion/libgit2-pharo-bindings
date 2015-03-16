foreign interface
packbuilder_set_threads: pb n: n 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 git_packbuilder_set_threads(LG2GitPackbuilderO pb, NBUInt32 n)) options: #(  )