tests
testFree
	array := LGitStringArray withAll: #( 'string 1' 'string 2' 'string 3').
	self assert: array count equals: 3.
	array free.
	self assert: array getHandle isNull.
	
