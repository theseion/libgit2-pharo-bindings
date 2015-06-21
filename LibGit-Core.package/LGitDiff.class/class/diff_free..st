libgit-calls
diff_free: handle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(void git_diff_free(ulong handle))
		options: #(  )