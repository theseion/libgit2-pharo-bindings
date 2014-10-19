tests
testPrinting
	| reference |
	reference := repository lookup: 'refs/heads/master'.
	self
		assert: reference printString
		equals: 'a LGitReference (''refs/heads/master'')'.
		
	reference := repository lookup: 'HEAD'.
	self
		assert: reference printString
		equals: 'a LGitReference (''HEAD'')'