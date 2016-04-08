libgit-calls
commit_parent_id: commit n: n
	
	^ self
		call: #(LGitId * git_commit_parent_id #(self , FFIUInt32 n))
		options: #()