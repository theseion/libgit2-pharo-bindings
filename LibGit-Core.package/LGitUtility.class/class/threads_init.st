libgit-calls
threads_init
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_threads_init())
		options: #(  )