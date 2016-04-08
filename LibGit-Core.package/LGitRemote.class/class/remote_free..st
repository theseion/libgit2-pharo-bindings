libgit-calls
remote_free: handle
	
	^ self call: #(FFIVoid git_remote_free #(ulong handle)) options: #()