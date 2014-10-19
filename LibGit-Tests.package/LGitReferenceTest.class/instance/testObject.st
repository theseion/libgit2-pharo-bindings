tests
testObject
	self assert: repository head object class equals: LGitCommit.
	self assert: (repository lookup: 'HEAD') object class equals: LGitCommit.
	self assert: repository head object equals: (repository lookup: 'HEAD') object