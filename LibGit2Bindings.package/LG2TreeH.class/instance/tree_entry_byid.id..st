foreign interface
tree_entry_byid: tree id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitTreeEntryO git_tree_entry_byid(LG2GitTreeO tree, git_oid * id)) options: #(  )