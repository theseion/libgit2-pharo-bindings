libgit-calls
branch_iterator_free: handle 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(void git_branch_iterator_free(ulong handle))
		options: #(  )