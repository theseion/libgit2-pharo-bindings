tests
testSignalsCallError
	| return |
	return := LGitFunctionReturn new
		methodSelector: #foo;
		value: LGitReturnCodeEnum git_error.
		
	self
		should: [ return handleLGitReturnCode ]
		raise: LGit_GIT_ERROR