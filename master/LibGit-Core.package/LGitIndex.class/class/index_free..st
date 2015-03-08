libgit-calls
index_free: handle 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_index_free(ulong handle))
		options: #(  )