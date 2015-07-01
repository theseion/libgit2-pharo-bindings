tests
testRevparse
	| repo |
	repo := self newRepo state4WithCommit.
	self assert: (repo revparse: 'HEAD') equals: repo head object.