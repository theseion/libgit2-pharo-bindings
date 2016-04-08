libgit-calls
index_free: handle
	
	^ self call: #(FFIVoid git_index_free #(ulong handle)) options: #()