operations
setTarget: aString
	| newRef |
	newRef := LGitReference new.
	self withReturnHandlerDo: [ 
		self reference_symbolic_set_target: newRef
		ref: self
		target: aString
		signature: self repository defaultSignature
		log_message: 'set ', (self name), ' to ', aString ]