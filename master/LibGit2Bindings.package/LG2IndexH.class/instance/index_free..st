foreign interface
index_free: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_index_free(LG2GitIndexO index)) options: #(  )