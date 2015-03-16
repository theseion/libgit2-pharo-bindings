operations
pushWithRefSpec: aRefSpec options: pushOptions signature: aSignature reflogMessage: aString
	| refspecs return options |
	refspecs := (LGitStringArray new
		strings: { aRefSpec asString };
		count: 1;
		yourself).
	options := LGitPushOptions new.
	return := self withReturnHandlerDo: [
		self
			remote_push: self
			refspecs: refspecs
			opts: options
			signature: aSignature
			reflog_message: aString ].
		
	refspecs strings free.
	^ return