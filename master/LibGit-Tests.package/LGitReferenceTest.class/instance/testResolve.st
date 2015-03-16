tests
testResolve
	self assert: repository head resolve class equals: LGitReference.
	self assert: repository head resolve equals: repository head