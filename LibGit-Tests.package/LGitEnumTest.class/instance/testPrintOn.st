tests
testPrintOn
	self
		assert: LGitReturnCodeEnum git_ok printString
		equals: 'a LGitReturnCodeEnum(#git_ok [0])'