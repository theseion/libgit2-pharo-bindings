operations
pushWithRefSpec: aRefSpec pushOptions: pushOptions
	| refspecs return |
	refspecs := (LGitStringArray new
		freeAfterUse: true;
		strings: { aRefSpec asString };
		count: 1;
		yourself).
	return := self withReturnHandlerDo: [
		self
			remote_push: self
			refspecs: refspecs
			opts: pushOptions ].
		
	^ return