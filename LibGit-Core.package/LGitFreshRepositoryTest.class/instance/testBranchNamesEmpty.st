tests
testBranchNamesEmpty
	| repo branchNames |
	repo := self newRepo state3Opened.
	branchNames := repo branchNames.
	self assert: branchNames isEmpty