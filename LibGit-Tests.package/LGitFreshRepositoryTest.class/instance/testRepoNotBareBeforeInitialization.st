tests
testRepoNotBareBeforeInitialization
	| repo |
	repo := self newRepo state1ExistingReference.
	self deny: repo isBare