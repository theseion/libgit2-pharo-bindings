libgit-calls
diff_patch_free: handle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(void git_patch_free(ulong handle))
		options: #(  )