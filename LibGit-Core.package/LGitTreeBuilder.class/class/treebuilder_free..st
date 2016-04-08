libgit-calls
treebuilder_free: handle
	
	^ self
		call: #(FFIVoid git_treebuilder_free #(ulong handle))
		options: #()