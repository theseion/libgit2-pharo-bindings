tests
testEquals
	| repo commit commit2 |
	repo := self newRepo state4WithCommit.
	commit := repo head resolve object.
	commit2 := repo head resolve object.
	self assert: commit equals: commit.
	self assert: commit equals: commit2.
	self deny: commit == commit2.
	self assert: commit tree equals: commit2 tree.
	self assert: commit id equals: commit2 id