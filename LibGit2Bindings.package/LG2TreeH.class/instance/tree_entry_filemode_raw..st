foreign interface
tree_entry_filemode_raw: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_filemode_t git_tree_entry_filemode_raw(LG2GitTreeEntryO entry)) options: #(  )