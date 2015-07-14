libgit-calls
blame_get_hunk_byline: blame lineno: lineno
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitBlameHunk * git_blame_get_hunk_byline(self, NBUInt32 lineno))
		options: #( )