libgit-calls
revwalk_free: handle
	
	^ self call: #(FFIVoid git_revwalk_free #(ulong handle)) options: #()