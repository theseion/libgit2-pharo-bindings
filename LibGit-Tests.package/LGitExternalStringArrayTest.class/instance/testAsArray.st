tests
testAsArray
	| loaded |
	array := LGitExternalStringArray externalNew: 2.
	array
		at: 1 put: 'string 1';
		at: 2 put: 'string 2'.
		
	loaded := array asArray.
	self assert: loaded size equals: 2.
	self assert: loaded first equals: 'string 1'.
	self assert: loaded second equals: 'string 2'