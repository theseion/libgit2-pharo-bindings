tests
testOriginalStartLineNumber
	| blame hunk |
	self touchFileAndCommit.
	
	blame := LGitBlame
		of: self repository
		on: self file.	
	hunk := blame hunkAt: blame numberOfHunks.
	
	self assert: hunk originalStartLineNumber equals: 1