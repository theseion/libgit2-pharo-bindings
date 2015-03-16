foreign interface
tree_entrycount: tree 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tree_entrycount(LG2GitTreeO tree)) options: #(  )