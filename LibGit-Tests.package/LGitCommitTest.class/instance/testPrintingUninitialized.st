tests
testPrintingUninitialized
	| repo |
	repo := self newRepo state0MissingReference.
	self
		assert: (LGitCommit of: repo) printString
		equals: 'a LGitCommit (<not initialized>)'