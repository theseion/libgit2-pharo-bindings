operations
defaultSignature
	| signaturePointer |
	signaturePointer := NBExternalAddress new.
	self withReturnHandlerDo: [ 
		self
			signature_default: signaturePointer
			repo: self ].
	^ LGitSignature from: (LG2GitSignatureS fromPointer: signaturePointer)
	 