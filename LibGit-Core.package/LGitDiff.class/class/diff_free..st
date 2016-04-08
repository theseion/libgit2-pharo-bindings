libgit-calls
diff_free: handle
	
	^ self call: #(void git_diff_free #(ulong handle)) options: #()