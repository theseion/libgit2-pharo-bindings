tests
testGettingBlame
	| blame |
	blame := LGitBlame
		of: self repository
		on: self file.
		
	self deny: blame isNil.
	self assert: blame class = LGitBlame