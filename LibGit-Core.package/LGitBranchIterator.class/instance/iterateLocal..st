operations
iterateLocal: aBoolean
	| flag |
	flag := aBoolean
		ifTrue: [ LG2GitBranchTE at: #GIT_BRANCH_LOCAL ]
		ifFalse: [ LG2GitBranchTE at: #GIT_BRANCH_REMOTE ].
	self withReturnHandlerDo: [
		self
			branch_iterator_new: self
			repo: self repository
			list_flags: flag ]