foreign interface
tree_entry_type: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_otype git_tree_entry_type(LG2GitTreeEntryO entry)) options: #(  )