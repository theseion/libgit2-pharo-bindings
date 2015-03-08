foreign interface
index_get_byindex: index n: n 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_index_entry * git_index_get_byindex(LG2GitIndexO index, NBInt32 n)) options: #(  )