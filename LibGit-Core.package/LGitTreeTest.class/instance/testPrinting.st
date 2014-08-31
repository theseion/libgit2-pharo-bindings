tests
testPrinting
	| repo tree names |
	repo := self newRepo state4WithCommit.
	tree := repo head object tree.
	names := tree names.
	self assert: names size equals: 0.
	self
		assert: tree printString
		equals: 'a LGitTree (<root tree>)'.
		
	tree := tree entries first object.
	names := tree names.
	self assert: names size equals: 1.
	self
		assert: tree printString
		equals: 'a LGitTree (''libgit_tests'')'