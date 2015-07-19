tests
testIsPartOfBitFlag
	| flag |
	flag := 2r01.
	self assert: (LGitStatusTypeEnum git_status_index_new isPartOfBitFlag: flag).
	self deny: (LGitStatusTypeEnum git_status_index_modified isPartOfBitFlag: flag).
	
	flag := 2r10.
	self deny: (LGitStatusTypeEnum git_status_index_new isPartOfBitFlag: flag).
	self assert: (LGitStatusTypeEnum git_status_index_modified isPartOfBitFlag: flag).
	
	flag := 2r11.
	self assert: (LGitStatusTypeEnum git_status_index_new isPartOfBitFlag: flag).
	self assert: (LGitStatusTypeEnum git_status_index_modified isPartOfBitFlag: flag)