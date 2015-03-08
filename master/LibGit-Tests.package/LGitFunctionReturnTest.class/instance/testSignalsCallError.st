tests
testSignalsCallError
	| return |
	return := LGitFunctionReturn new
		methodSelector: #foo;
		value: (LGitReturnCodeEnum fromInteger: (self libGitReturnCodeTypes at: #GIT_ERROR) value).
		
	self
		should: [ return handleLGitReturnCode ]
		raise: LGit_GIT_ERROR