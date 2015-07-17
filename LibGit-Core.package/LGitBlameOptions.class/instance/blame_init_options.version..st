libgit-calls
blame_init_options: opts version: version
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		callUnchecked: #(NBInt32 git_blame_init_options(LGitBlameOptions * self, LGitOptionsVersionsEnum version))
		options: #( )