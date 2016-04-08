libgit-calls
diff_get_delta: diff idx: idx
	
	^ self
		call: #(LGitDiffDelta * git_diff_get_delta #(self , FFIUInt32 idx))
		options: #()