tests
testBranchesEmpty
	| repo branches |
	repo := self newRepo state3Opened.
	branches := repo branches.
	self assert: branches isEmpty