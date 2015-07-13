tests
testAt
	array := LGitExternalStringArray externalNew: 1.
	self assert: array size equals: 1.
	array at: 1 put: 'teststring'.
	
	self assert: (array at: 1) equals: 'teststring'