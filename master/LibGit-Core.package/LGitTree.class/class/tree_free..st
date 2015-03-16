libgit-calls
tree_free: handle 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_tree_free(ulong handle))
		options: #(  )