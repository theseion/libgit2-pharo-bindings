libgit-calls
pathspec_match_list_free: handle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(void git_pathspec_match_list_free(ulong handle))
		options: #(  )