tests
testAtPut
	array := LGitExternalStringArray externalNew: 1.
	self assert: array size equals: 1.
	
	self
		shouldnt: [ array at: 1 put: 'teststring' ]
		raise: Error