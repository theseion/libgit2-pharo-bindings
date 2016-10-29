libgit-calls
index_write: index
	
	^ self
		call: #(LGitReturnCodeEnum git_index_write #(self))
		options: #()