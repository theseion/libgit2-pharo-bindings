tests
testNumDeltasZero
	| diff |
	diff := (LGitDiff of: self repository)
		diffIndexToWorkDir;
		yourself.
	self assert: diff numberOfDeltas equals: 0