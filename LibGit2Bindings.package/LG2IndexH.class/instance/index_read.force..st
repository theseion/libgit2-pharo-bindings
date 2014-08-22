foreign interface
index_read: index force: force 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_read(LG2GitIndexO index, NBInt32 force)) options: #(  )