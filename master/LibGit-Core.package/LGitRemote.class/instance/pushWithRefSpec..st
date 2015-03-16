operations
pushWithRefSpec: aRefSpec
	^ self
		pushWithRefSpec: aRefSpec
		options: LGitPushOptions new
		signature: self repository defaultSignature
		reflogMessage: 'push without message'