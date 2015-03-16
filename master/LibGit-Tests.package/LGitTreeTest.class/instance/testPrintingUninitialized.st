tests
testPrintingUninitialized
	| repo |
	repo := self newRepo state0MissingReference.
	self assert: (LGitTree of: repo) printString equals: 'a LGitTree (<not initialized>)'