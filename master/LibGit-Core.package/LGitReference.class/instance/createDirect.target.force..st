operations
createDirect: nameString target: aGitId force: aBoolean
	self withReturnHandlerDo: [ 
		self
			reference_create: self
			repo: self repository
			name: nameString
			id: aGitId
			force: aBoolean
			signature: (self repository defaultSignature
				freeAfterUse: true;
				yourself)
			log_message: 'created reference ', nameString ]