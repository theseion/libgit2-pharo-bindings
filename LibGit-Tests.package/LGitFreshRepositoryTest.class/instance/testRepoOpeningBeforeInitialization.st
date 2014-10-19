tests
testRepoOpeningBeforeInitialization
	<todo: 'use meaningful exceptions'>
	| repo |
	repo := self newRepo state1ExistingReference.
	self deny: repo isInitialized.
	
	self should: [ repo open ] raise: LGitError