tests
testPatchFromDiff
	| diff |
	self touchFile.
	diff := (LGitDiff of: self repository)
		diffIndexToWorkDir;
		yourself.
	self assert: diff numberOfDeltas equals: 1.

	(diff patchAt: diff numberOfDeltas) printDiff