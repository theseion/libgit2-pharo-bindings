tests
testPrinting
	| repo commit id |
	repo := self newRepo state4WithCommit.
	commit := repo head object.
	id := commit id hexString.
	self
		assert: commit printString
		equals: 'a LGitCommit (', (id first: 7), '...', (id last: 7), ', ''push test'')'