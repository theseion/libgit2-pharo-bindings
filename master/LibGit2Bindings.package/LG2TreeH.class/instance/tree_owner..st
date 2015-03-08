foreign interface
tree_owner: tree 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitRepositoryO git_tree_owner(LG2GitTreeO tree)) options: #(  )