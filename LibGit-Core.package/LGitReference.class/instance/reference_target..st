libgit-calls
reference_target: ref
	
	^ self call: #(LGitId * git_reference_target #(self)) options: #()