libgit-calls
pathspec_match_list_free: handle
	
	^ self
		call: #(void git_pathspec_match_list_free #(ulong handle))
		options: #()