tests
testNumDeltasNonZero
	| diff |
	self touchFile.
	diff := (LGitDiff of: self repository)
		diffIndexToWorkDir;
		yourself.
	self assert: diff numberOfDeltas equals: 1