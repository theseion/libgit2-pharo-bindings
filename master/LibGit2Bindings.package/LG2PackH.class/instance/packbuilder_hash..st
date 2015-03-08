foreign interface
packbuilder_hash: pb 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_packbuilder_hash(LG2GitPackbuilderO pb)) options: #(  )