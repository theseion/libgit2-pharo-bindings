tests
testBranchNamesNotEmpty
	| repo branchNames |
	repo := self newRepo state4WithCommit.
	branchNames := repo branchNames.
	self assert: branchNames notEmpty.
	self assert: branchNames size equals: 1.
	self assert: branchNames first equals: 'refs/heads/master'