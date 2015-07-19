tests
testDoesntSignalGitOk
	| return |
	return := LGitFunctionReturn new
		methodSelector: #foo;
		value: LGitReturnCodeEnum git_ok.
	
	self
		shouldnt: [ return handleLGitReturnCode ]
		raise: LGit_GIT_OK.
		
	self assert: return handleLGitReturnCode equals: LGitReturnCodeEnum git_ok