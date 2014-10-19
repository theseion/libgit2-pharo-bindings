tests
testWrite
	| treeId lookedup |
	builder createNew.
	self
		shouldnt: [ treeId := builder write ]
		raise: LGitWritingTreeFailed.
	lookedup:= (LGitTree fromId: treeId of: repository).
	self assert: treeId equals: lookedup id