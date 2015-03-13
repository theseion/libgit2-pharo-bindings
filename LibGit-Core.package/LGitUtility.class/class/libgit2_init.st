libgit-calls
libgit2_init
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_libgit2_init())
		options: #( )