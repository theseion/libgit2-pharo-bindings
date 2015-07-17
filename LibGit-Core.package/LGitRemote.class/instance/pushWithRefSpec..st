operations
pushWithRefSpec: aRefSpec
	^ self
		pushWithRefSpec: aRefSpec
		options: LGitPushOptions defaults
		signature: self repository defaultSignature
		reflogMessage: 'push without message'