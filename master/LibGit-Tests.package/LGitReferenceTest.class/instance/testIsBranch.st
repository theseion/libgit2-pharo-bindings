tests
testIsBranch
	self assert: repository head isBranch.
	self deny: (repository lookup: 'HEAD') isBranch