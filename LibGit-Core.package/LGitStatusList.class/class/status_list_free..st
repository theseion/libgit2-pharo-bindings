libgit-calls
status_list_free: handle
	
	^ self
		call: #(FFIVoid git_status_list_free #(ulong handle))
		options: #()