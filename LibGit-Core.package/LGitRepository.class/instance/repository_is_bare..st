libgit - calls
repository_is_bare: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(Boolean git_repository_is_bare(self))
		options: #()