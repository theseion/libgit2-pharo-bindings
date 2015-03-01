libgit-calls
packbuilder_free: handle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_packbuilder_free(ulong handle))
		options: #(  )