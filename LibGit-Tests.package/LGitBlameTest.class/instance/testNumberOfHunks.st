tests
testNumberOfHunks
	| blame |
	self touchFileAndCommit.
	
	blame := LGitBlame
		of: self repository
		on: self file.
		
	self assert: blame numberOfHunks equals: 1