tests
testFinalStartLineNumber
	| blame hunk |
	self touchFileAndCommit.
	
	blame := LGitBlame
		of: self repository
		on: self file.	
	hunk := blame hunkAt: blame numberOfHunks.
	
	self assert: hunk finalStartLineNumber equals: 1