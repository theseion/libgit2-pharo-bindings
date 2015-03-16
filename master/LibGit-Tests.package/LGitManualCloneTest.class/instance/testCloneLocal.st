tests
testCloneLocal
	| repo |
	repo := self newRepo state0MissingReference.
	self deny: repo exists.
	self deny: repo isProperRepository.

	repo cloneLocal: self newRepo repositoryUrlLocal.
	self assert: repo exists.
	self assert: (repo repositoryReference / '.git') exists.
	self assert: (repo repositoryReference / '.git/HEAD') exists.
	self assert: repo isProperRepository.
	self shouldnt: [ repo open ] raise: LGitAbstractError