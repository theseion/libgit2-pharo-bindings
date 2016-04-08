libgit-calls
repository_free: handle
	
	^ self call: #(void git_repository_free #(ulong handle)) options: #()