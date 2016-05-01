tests
testStringsPut
	| strings |
	strings := #( 'string 1' 'string 2' 'string 3').
	
	self 
		shouldnt: [ array := LGitStringArray withAll: strings ]
		raise: Error