foreign interface
tree_entry_byname: tree filename: filename 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitTreeEntryO git_tree_entry_byname(LG2GitTreeO tree, NBExternalString filename)) options: #(  )