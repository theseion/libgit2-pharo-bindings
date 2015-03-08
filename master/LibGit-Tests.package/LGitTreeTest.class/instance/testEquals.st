tests
testEquals
	| repo headTree |
	repo := self newRepo state4WithCommit.
	headTree := repo head resolve object tree.
	self assert: headTree equals: headTree.
	self assert: headTree equals: repo head resolve object tree.
	self deny: headTree == repo head resolve object tree