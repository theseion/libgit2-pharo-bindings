tests
testRepoInitialization
	| repo |
	repo := self newRepo state1ExistingReference.
	self deny: (repo repositoryReference / '.git') exists.

	self shouldnt: [ repo init ] raise: LGitAbstractError.
	self assert: (repo repositoryReference / '.git') exists