tests
testDoesntSignalGitOk
	| return |
	return := LGitFunctionReturn new
		methodSelector: #foo;
		value: LGitReturnCodeEnum GIT_OK.
	
	self
		shouldnt: [ return handleLGitReturnCode ]
		raise: LGit_GIT_OK.
		
	self assert: return handleLGitReturnCode equals: LGitReturnCodeEnum GIT_OK