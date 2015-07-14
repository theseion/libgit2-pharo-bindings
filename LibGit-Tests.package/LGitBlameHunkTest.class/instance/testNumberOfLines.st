tests
testNumberOfLines
	| blame hunk |
	self touchFileAndCommit.
	
	blame := LGitBlame
		of: self repository
		on: self file.	
	hunk := blame hunkAt: blame numberOfHunks.
	
	self assert: hunk numberOfLines equals: 1