tests
testLookupMasterBranch
	| repo branch |
	repo := self newRepo state4WithCommit.
	branch := repo lookupBranch: 'master'.
	
	self assert: branch class equals: LGitReference.
	self assert: branch name equals: 'refs/heads/master'