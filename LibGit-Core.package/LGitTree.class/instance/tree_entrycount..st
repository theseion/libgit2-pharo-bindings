libgit - calls
tree_entrycount: tree 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(int git_tree_entrycount(self)) options: #(  )