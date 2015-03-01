libgit-calls
tree_entry_free: handle 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_tree_entry_free(ulong handle))
		options: #(  )