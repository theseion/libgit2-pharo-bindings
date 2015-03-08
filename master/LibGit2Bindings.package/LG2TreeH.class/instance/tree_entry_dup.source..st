foreign interface
tree_entry_dup: dest source: source 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tree_entry_dup(LG2GitTreeEntryO * dest, LG2GitTreeEntryO source)) options: #(  )