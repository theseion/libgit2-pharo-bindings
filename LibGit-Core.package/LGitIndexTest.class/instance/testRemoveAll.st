tests
testRemoveAll
	| repo index file path |
	repo := self newRepo state4WithCommit.
	index := repo index.
	path := 'libgit_tests/foo'.
	file := repo repositoryReference / path.
	self assert: (repo isBeingTracked: path).
	
	index removeAll.
	self deny: (repo isBeingTracked: path)