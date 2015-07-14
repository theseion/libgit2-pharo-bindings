tests
testFinalCommitId
	| blame hunk |
	self touchFileAndCommit.
	
	blame := LGitBlame
		of: self repository
		on: self file.
		
	hunk := blame hunkAt: blame numberOfHunks.
	
	self
		assert: hunk finalCommitId
		equals: self repository head object id