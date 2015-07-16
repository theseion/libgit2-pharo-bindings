libgit-calls
blame_free: handle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(void git_blame_free(ulong handle))
		options: #(  )