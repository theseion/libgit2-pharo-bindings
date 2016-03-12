tests
testRemoveAll
	| repo index path |
	repo := self newRepo state4WithCommit.
	index := repo index.
	path := 'libgit_tests/foo'.
	file := repo repositoryReference / path.
	self assert: (index isBeingTracked: path).
	
	index removeAll.
	self deny: (index isBeingTracked: path)