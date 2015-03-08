libgit-calls
strarray_free: handle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(void git_strarray_free(ulong handle))
		options: #()