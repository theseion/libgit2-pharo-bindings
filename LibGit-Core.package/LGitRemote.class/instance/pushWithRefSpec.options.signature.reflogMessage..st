operations
pushWithRefSpec: aRefSpec options: pushOptions signature: aSignature reflogMessage: aString
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
			opts: pushOptions
			signature: aSignature
			reflog_message: aString ].
		
	refspecs prim_strings free.
	^ return