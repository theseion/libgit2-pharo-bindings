operations
setTarget: aReference
	| newRef |
	newRef := LGitReference of: self repository.
	self withReturnHandlerDo: [ 
		self 
			reference_set_target: newRef
			ref: self
			id: aReference resolve object id
			signature: self repository defaultSignature asSignatureStruct
			log_message: 'set ', (self name), ' to ', aReference name ]