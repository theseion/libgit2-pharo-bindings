libgit-calls
blame_get_hunk_byindex: blame index: index
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitBlameHunk * git_blame_get_hunk_byindex(self, NBUInt32 index))
		options: #( )