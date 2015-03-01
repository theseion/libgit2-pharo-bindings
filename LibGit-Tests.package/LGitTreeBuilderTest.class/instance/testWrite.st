tests
testWrite
	| treeId lookedup |
	builder createNew.
	self
		shouldnt: [ treeId := builder write ]
		raise: LGitWritingTreeFailed.
	lookedup:= LGitTree
		of: repository
		freeAfterUse: true
		fromId: treeId.
	self assert: treeId equals: lookedup id