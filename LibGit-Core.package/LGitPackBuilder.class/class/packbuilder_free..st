libgit-calls
packbuilder_free: handle
	
	^ self
		call: #(FFIVoid git_packbuilder_free #(ulong handle))
		options: #()