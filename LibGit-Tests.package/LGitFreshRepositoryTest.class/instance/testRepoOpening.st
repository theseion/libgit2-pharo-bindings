tests
testRepoOpening
	| repo |
	repo := self newRepo state2Initialized.
	self deny: repo isOpen.
	
	self shouldnt: [ repo open ] raise: LGitOpeningRepositoryError.
	self assert: repo isReady