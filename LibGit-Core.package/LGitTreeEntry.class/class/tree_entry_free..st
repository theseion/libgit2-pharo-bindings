libgit-calls
tree_entry_free: handle
	
	^ self
		call: #(FFIVoid git_tree_entry_free #(ulong handle))
		options: #()