tests
testPrintingUninitialized
	| repo |
	repo := self newRepo state0MissingReference.
	self
		assert: (LGitTreeEntry of: repo freeAfterUse: true) printString
		equals: 'a LGitTreeEntry (<not initialized>)'