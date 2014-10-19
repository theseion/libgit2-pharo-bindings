operations
setTargetId: aGitId
	| newRef |
	newRef := LGitReference of: self repository.
	self withReturnHandlerDo: [ 
		self 
			reference_set_target: newRef
			ref: self
			id: aGitId
			signature: self repository defaultSignature
			log_message: 'set ', (self name), ' to ', aGitId hexString ]