libgit-calls
blame_get_hunk_byindex: blame index: index
	
	^ self
		call: #(LGitBlameHunk * git_blame_get_hunk_byindex #(self , FFIUInt32 index))
		options: #()