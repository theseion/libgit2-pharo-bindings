libgit-calls
tree_entry_bypath: out tree: tree path: path
	
	^ self
		call:
			#(LGitReturnCodeEnum git_tree_entry_bypath #(LGitTreeEntry * out , self , String path))
		options: #()