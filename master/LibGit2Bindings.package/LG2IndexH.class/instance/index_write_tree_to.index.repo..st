foreign interface
index_write_tree_to: out index: index repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_write_tree_to(git_oid * out, LG2GitIndexO index, LG2GitRepositoryO repo)) options: #(  )