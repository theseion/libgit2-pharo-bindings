libgit - calls
tree_entry_name: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(String git_tree_entry_name(self)) options: #(  )