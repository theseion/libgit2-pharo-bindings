libgit-calls
tree_id: tree
	
	^ self call: #(LGitId * git_tree_id #(self)) options: #()