tests
testRepoInitialization
	| repo |
	repo := self newRepo state1ExistingReference.
	self deny: (repo repositoryReference / '.git') exists.

	self shouldnt: [ repo init ] raise: LGitError.
	self assert: (repo repositoryReference / '.git') exists