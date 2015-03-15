tests
testPrintOn
	self
		assert: LGitReturnCodeEnum GIT_OK printString
		equals: 'a LGitReturnCodeEnum(#GIT_OK [0])'