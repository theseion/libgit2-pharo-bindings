operations
iterateLocal: aBoolean
	| flag |
	self repository signalIfNotReady.
	flag := aBoolean
		ifTrue: [ LGitBranchTypeEnum git_branch_local ]
		ifFalse: [ LGitBranchTypeEnum git_branch_remote ].
	self withReturnHandlerDo: [
		self
			branch_iterator_new: self
			repo: self repository
			list_flags: flag ]