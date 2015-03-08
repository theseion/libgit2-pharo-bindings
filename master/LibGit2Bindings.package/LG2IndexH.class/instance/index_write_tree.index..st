foreign interface
index_write_tree: out index: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_write_tree(git_oid * out, LG2GitIndexO index)) options: #(  )