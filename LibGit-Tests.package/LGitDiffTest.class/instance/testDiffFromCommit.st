tests
testDiffFromCommit
	| referenceCommit diffCommit diff |
	self touchFileAndCommit.
	referenceCommit := self repository head object.
	diffCommit := referenceCommit parents first.
	diff := (LGitDiff of: self repository)
		diffTree: diffCommit tree toTree: referenceCommit tree;
		yourself.
		
	self assert: diff numberOfDeltas equals: 1.
	Transcript
		open;
		show: (diff patchAt: diff numberOfDeltas) printDiff