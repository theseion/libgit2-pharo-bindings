lookup
lookupBranch: name
	| reference |
	self signalIfNotReady.
	
	reference := LGitReference of: self.
	self withReturnHandlerDo: [
		self
			branch_lookup: reference
			repo: self
			branch_name: name
			branch_type: (self libGitBranchTypes at: #GIT_BRANCH_LOCAL) ].
		
	^ reference