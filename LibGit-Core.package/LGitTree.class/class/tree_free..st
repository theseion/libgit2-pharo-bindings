libgit-calls
tree_free: handle
	
	^ self call: #(FFIVoid git_tree_free #(ulong handle)) options: #()