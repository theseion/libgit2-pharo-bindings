tests
testPrintingUninitialized
	| repo |
	repo := self newRepo state0MissingReference.
	self
		assert: (LGitBlob of: repo freeAfterUse: true) printString
		equals: 'a LGitBlob (<not initialized>)'