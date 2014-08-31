tests
testPrinting
	| repo entry |
	repo := self newRepo state4WithCommit.
	entry := repo head object tree entries first.
	self
		assert: entry printString
		equals: 'a LGitTreeEntry (''libgit_tests'')'