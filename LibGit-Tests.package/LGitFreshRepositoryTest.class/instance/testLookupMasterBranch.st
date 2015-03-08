tests
testLookupMasterBranch
	| repo |
	repo := self newRepo state3Opened.
	self 
		should: [ repo lookupBranch: 'master' ] "no commits yet, so master hasn't been created yet"
		raise: LGitAbstractError