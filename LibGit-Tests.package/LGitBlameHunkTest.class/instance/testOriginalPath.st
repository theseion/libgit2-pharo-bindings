tests
testOriginalPath
	| blame hunk |
	self touchFileAndCommit.
	
	blame := LGitBlame
		of: self repository
		on: self file.	
	hunk := blame hunkAt: blame numberOfHunks.
	
	self
		assert: hunk originalPath
		equals: ((self file relativeTo: self repository repositoryReference) printWithDelimiter: $/)