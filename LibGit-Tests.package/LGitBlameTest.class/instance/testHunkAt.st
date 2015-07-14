tests
testHunkAt
	| blame hunk |
	self touchFileAndCommit.
	
	blame := LGitBlame
		of: self repository
		on: self file.
		
	hunk := blame hunkAt: blame numberOfHunks.
	self deny: hunk isNil.
	self assert: hunk class == LGitBlameHunk