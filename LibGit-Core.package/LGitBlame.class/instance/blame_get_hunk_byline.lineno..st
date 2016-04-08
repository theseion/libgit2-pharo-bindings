libgit-calls
blame_get_hunk_byline: blame lineno: lineno
	
	^ self
		call: #(LGitBlameHunk * git_blame_get_hunk_byline #(self , FFIUInt32 lineno))
		options: #()