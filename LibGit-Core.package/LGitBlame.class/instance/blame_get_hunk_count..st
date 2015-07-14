libgit-calls
blame_get_hunk_count: blame
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBUInt32 git_blame_get_hunk_count(self))
		options: #( )