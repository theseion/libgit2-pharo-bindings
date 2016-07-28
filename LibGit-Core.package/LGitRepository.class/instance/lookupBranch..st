lookup
lookupBranch: name
	| reference |
	reference := LGitReference of: self.
	self
		withReturnHandlerDo: [ 
			(name beginsWith: 'refs/remotes')
				ifTrue: [ 
					self
						branch_lookup: reference
						branch_name: (name withoutPrefix: 'refs/remotes/')
						branch_type: LGitBranchTypeEnum git_branch_remote ]
				ifFalse: [ 
					self 
						branch_lookup: reference
						branch_name: name 
						branch_type: LGitBranchTypeEnum git_branch_local ]
	].
	^ reference