operations
pushWithRefSpec: aRefSpec options: pushOptions signature: aSignature reflogMessage: aString
	^ self withReturnHandlerDo: [
		self
			remote_push: self
			refspecs: (LGitStringArray new
				strings: { aRefSpec asString };
				count: 1;
				yourself)
			opts: LGitPushOptions new
			signature: aSignature
			reflog_message: aString ]