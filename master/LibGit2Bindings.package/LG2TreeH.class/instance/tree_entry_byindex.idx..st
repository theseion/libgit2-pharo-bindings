foreign interface
tree_entry_byindex: tree idx: idx 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitTreeEntryO git_tree_entry_byindex(LG2GitTreeO tree, NBInt32 idx)) options: #(  )