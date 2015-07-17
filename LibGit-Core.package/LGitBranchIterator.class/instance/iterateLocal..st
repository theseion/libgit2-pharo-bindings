operations
iterateLocal: aBoolean
	| flag |
	self repository signalIfNotReady.
	flag := aBoolean
		ifTrue: [ LGitBranchTypeEnum GIT_BRANCH_LOCAL ]
		ifFalse: [ LGitBranchTypeEnum GIT_BRANCH_REMOTE ].
	self withReturnHandlerDo: [
		self
			branch_iterator_new: self
			repo: self repository
			list_flags: flag ]