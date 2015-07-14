tests
testOriginalCommitId
	| blame hunk |
	self touchFileAndCommit.
	
	blame := LGitBlame
		of: self repository
		on: self file.	
	hunk := blame hunkAt: blame numberOfHunks.
	
	"there were no intermediate commits"
	self
		assert: hunk originalCommitId
		equals: hunk finalCommitId