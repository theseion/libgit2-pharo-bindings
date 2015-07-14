libgit-calls
blame_init_options: opts version: version
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBInt32 git_blame_init_options(LGitBlameOptions * opts, LGitBlameVersionEnum version))
		options: #( )