tests
testHasHead
	| repo |
	repo := self newRepo state3Opened.
	self assert: (repo repositoryReference / '.git/HEAD') exists