foreign interface
tree_entry_free: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_tree_entry_free(LG2GitTreeEntryO entry)) options: #(  )