foreign interface
tree_entry_name: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_tree_entry_name(LG2GitTreeEntryO entry)) options: #(  )