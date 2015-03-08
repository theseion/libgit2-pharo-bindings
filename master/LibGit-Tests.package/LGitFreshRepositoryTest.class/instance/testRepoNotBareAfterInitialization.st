tests
testRepoNotBareAfterInitialization
	| repo |
	repo := self newRepo state2Initialized.
	self deny: repo isBare