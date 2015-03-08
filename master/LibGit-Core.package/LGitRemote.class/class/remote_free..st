libgit-calls
remote_free: handle 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_remote_free(ulong handle))
		options: #(  )