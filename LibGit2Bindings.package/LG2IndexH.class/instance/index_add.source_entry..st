foreign interface
index_add: index source_entry: source_entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_add(LG2GitIndexO index, git_index_entry * source_entry)) options: #(  )