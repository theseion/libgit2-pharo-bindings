libgit-calls
repository_free: handle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(void git_repository_free(ulong handle))
		options: #(  )