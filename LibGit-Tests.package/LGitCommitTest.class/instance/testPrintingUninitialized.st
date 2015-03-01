tests
testPrintingUninitialized
	| repo |
	repo := self newRepo state0MissingReference.
	self
		assert: (LGitCommit of: repo freeAfterUse: true) printString
		equals: 'a LGitCommit (<not initialized>)'