foreign interface
index_read_tree: index tree: tree 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_read_tree(LG2GitIndexO index, LG2GitTreeO tree)) options: #(  )