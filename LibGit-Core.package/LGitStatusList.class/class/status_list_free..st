libgit-calls
status_list_free: handle 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_status_list_free(ulong handle))
		options: #(  )