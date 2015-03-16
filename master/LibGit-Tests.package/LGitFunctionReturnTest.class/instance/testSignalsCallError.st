tests
testSignalsCallError
	| return |
	return := LGitFunctionReturn new
		methodSelector: #foo;
		value: LGitReturnCodeEnum GIT_ERROR.
		
	self
		should: [ return handleLGitReturnCode ]
		raise: LGit_GIT_ERROR