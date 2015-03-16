tests
testPrinting
	| repo tree |
	repo := self newRepo state4WithCommit.
	tree := repo head object tree.
	self assert: tree size equals: 1. "the tree has one entry"
	self
		assert: tree printString
		equals: 'a LGitTree (number of entries: 1)'.
		
	tree := tree entries first object.
	self assert: tree size equals: 1. "that directory also only contains one file"
	self
		assert: tree printString
		equals: 'a LGitTree (number of entries: 1)'