foreign interface
index_clear: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_index_clear(LG2GitIndexO index)) options: #(  )