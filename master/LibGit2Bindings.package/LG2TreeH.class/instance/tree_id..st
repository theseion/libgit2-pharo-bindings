foreign interface
tree_id: tree 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_tree_id(LG2GitTreeO tree)) options: #(  )