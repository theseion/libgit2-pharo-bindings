libgit-calls
odb_free: handle
	
	^ self call: #(FFIVoid git_odb_free #(ulong handle)) options: #()