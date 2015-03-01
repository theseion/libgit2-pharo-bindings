libgit-calls
push_free: push 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_push_free(ulong handle))
		options: #(  )