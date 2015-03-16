libgit-calls
signature_free: handle 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_signature_free(ulong handle))
		options: #(  )