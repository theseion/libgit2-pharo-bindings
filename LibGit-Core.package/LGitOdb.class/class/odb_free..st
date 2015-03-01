libgit-calls
odb_free: handle 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_odb_free(ulong handle))
		options: #(  )