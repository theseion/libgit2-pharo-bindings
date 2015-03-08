foreign interface
tree_entry_cmp: e1 e2: e2 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tree_entry_cmp(LG2GitTreeEntryO e1, LG2GitTreeEntryO e2)) options: #(  )