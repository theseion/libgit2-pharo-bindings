operations
iterateLocal: aBoolean
	| flag |
	flag := aBoolean
		ifTrue: [ LGitBranchTypeEnum at: #GIT_BRANCH_LOCAL ]
		ifFalse: [ LGitBranchTypeEnum at: #GIT_BRANCH_REMOTE ].
	self withReturnHandlerDo: [
		self
			branch_iterator_new: self
			repo: self repository
			list_flags: flag ]