operations
defaultSignature
	| signaturePointer |
	signaturePointer := NBExternalAddress new.
	self withReturnHandlerDo: [ 
		self
			signature_default: signaturePointer
			repo: self ].
	^ LGitSignature fromPointer: signaturePointer