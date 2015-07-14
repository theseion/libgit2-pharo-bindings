tests
testSignatures
	| blame hunk |
	self touchFileAndCommit.
	
	blame := LGitBlame
		of: self repository
		on: self file.	
	hunk := blame hunkAt: blame numberOfHunks.

	self assert: hunk originalSignature name equals: hunk finalSignature name.
	self assert: hunk originalSignature email equals: hunk finalSignature email