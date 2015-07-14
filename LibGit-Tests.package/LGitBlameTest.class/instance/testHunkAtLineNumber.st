tests
testHunkAtLineNumber
	| blame hunk |
	self touchFileAndCommit.
	
	blame := LGitBlame
		of: self repository
		on: self file.
	
	self assert: self file contents lines size equals: 1.
	
	hunk := blame hunkAtLineNumber: 1.
	self deny: hunk isNil.
	self assert: hunk class == LGitBlameHunk