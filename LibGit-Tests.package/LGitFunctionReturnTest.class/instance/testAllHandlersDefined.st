tests
testAllHandlersDefined
	self
		shouldnt: [ LGitReturnCodeEnum setUpHandlers ]
		raise: LGitNoReturnCodeHandlerDefined