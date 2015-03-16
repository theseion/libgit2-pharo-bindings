foreign interface
tree_entry_id: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_tree_entry_id(LG2GitTreeEntryO entry)) options: #(  )