libgit-calls
repository_init: out path: path is_bare: is_bare 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(int git_repository_init(LGitRepository * out, String path, Boolean is_bare))
		options: #(  )