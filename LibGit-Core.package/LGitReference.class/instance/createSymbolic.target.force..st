operations
createSymbolic: nameString target: targetString force: aBoolean
	self withReturnHandlerDo: [ 
		self
			reference_symbolic_create: self
			repo: self repository
			name: nameString
			target: targetString
			force: aBoolean
			signature: (self repository defaultSignature
				freeAfterUse: true;
				yourself)
			log_message: 'created reference ', nameString ]