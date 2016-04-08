libgit-calls
reference_free: handle
	
	^ self
		call: #(FFIVoid git_reference_free #(ulong handle))
		options: #()