libgit-calls
reference_free: handle 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_reference_free(ulong handle))
		options: #(  )