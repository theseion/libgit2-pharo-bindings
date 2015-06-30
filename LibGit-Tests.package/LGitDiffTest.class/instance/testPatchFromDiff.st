tests
testPatchFromDiff
	| diff |
	self touchFile.
	diff := (LGitDiff of: self repository)
		diffIndexToWorkDir;
		yourself.
	self assert: diff numberOfDeltas equals: 1.

	Transcript
		open;
		show: (diff patchAt: diff numberOfDeltas) printDiff