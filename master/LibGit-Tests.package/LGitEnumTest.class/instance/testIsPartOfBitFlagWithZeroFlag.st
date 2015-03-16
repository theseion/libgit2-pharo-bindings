tests
testIsPartOfBitFlagWithZeroFlag
	"For some reason the libgit2 folks thought it would make sense to
	use flags of value 0 in bit flags. That forces one to check for zero
	(on the entire word)	explicitly. WTF."
	| flag |
	flag := 2r00.
	self assert: (LGitStatusTypeEnum GIT_STATUS_CURRENT isPartOfBitFlag: flag).
	self deny: (LGitStatusTypeEnum GIT_STATUS_INDEX_MODIFIED isPartOfBitFlag: flag).
	
	flag := 2r11.
	self deny: (LGitStatusTypeEnum GIT_STATUS_CURRENT isPartOfBitFlag: flag).
	self assert: (LGitStatusTypeEnum GIT_STATUS_INDEX_MODIFIED isPartOfBitFlag: flag).
	
	flag := 2r10.
	self deny: (LGitStatusTypeEnum GIT_STATUS_CURRENT isPartOfBitFlag: flag).
	self assert: (LGitStatusTypeEnum GIT_STATUS_INDEX_MODIFIED isPartOfBitFlag: flag)