tests
testDoesntSignalCallReturn
	| return |
	return := LGitFunctionReturn new
		methodSelector: #foo;
		value: 'a string return'.

	self
		shouldnt: [ return handleLGitReturnCode ]
		raise: LGitCallError.
	self assert: return handleLGitReturnCode equals: 'a string return'