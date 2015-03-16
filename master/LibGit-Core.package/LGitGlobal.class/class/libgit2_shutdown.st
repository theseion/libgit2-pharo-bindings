libgit-calls
libgit2_shutdown
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_libgit2_shutdown())
		options: #(  )