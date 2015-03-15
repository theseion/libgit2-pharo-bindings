tests
testIsPartOfBitFlag
	| flag |
	flag := 2r01.
	self assert: (LGitStatusTypeEnum GIT_STATUS_INDEX_NEW isPartOfBitFlag: flag).
	self deny: (LGitStatusTypeEnum GIT_STATUS_INDEX_MODIFIED isPartOfBitFlag: flag).
	
	flag := 2r10.
	self deny: (LGitStatusTypeEnum GIT_STATUS_INDEX_NEW isPartOfBitFlag: flag).
	self assert: (LGitStatusTypeEnum GIT_STATUS_INDEX_MODIFIED isPartOfBitFlag: flag).
	
	flag := 2r11.
	self assert: (LGitStatusTypeEnum GIT_STATUS_INDEX_NEW isPartOfBitFlag: flag).
	self assert: (LGitStatusTypeEnum GIT_STATUS_INDEX_MODIFIED isPartOfBitFlag: flag)