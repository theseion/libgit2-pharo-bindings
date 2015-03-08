libgit-calls
treebuilder_free: handle 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_treebuilder_free(ulong handle))
		options: #(  )