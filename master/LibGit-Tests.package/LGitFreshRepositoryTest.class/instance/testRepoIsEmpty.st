tests
testRepoIsEmpty
	| repo |
	repo := self newRepo state3Opened.
	self assert: repo isEmpty