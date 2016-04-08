libgit-calls
commit_id: commit
	
	^ self call: #(LGitId * git_commit_id #(self)) options: #()