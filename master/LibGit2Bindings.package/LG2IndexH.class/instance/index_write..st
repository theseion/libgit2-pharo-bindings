foreign interface
index_write: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_write(LG2GitIndexO index)) options: #(  )