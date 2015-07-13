tests
testStringsPut
	| strings |
	strings := #( 'string 1' 'string 2' 'string 3').
	
	self 
		shouldnt: [ array := LGitStringArray externalNew
			count: strings size;
			strings: strings;
			yourself ]
		raise: Error