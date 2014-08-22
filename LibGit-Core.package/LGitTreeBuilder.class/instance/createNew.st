operations
createNew
	self withReturnHandlerDo: [ 
		self 
			treebuilder_create: self
			source: LGitTree null ]