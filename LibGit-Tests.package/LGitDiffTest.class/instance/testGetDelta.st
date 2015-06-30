tests
testGetDelta
	| diff |
	self touchFile.
	diff := (LGitDiff of: self repository)
		diffIndexToWorkDir;
		yourself.
		
	self
		shouldnt: [ diff deltaAt: diff numberOfDeltas ]
		raise: Error