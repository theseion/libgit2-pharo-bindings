tests
testCreate
	| repo |
	repo := self newRepo state0MissingReference.
	self deny: repo exists.
	self deny: repo repositoryReference exists.
	
	repo create.
	self assert: repo exists.
	self assert: repo repositoryReference exists