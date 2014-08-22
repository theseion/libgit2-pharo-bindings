tests
testRepoShouldHaveName
	| repo |
	repo := self newRepo state0MissingReference.
	
	self assert: repo repositoryReference basename equals: '_test_repo_'