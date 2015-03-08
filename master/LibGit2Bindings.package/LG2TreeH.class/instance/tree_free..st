foreign interface
tree_free: tree 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_tree_free(LG2GitTreeO tree)) options: #(  )