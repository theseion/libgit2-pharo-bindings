accessing
index
	| index |
	index := LGitIndex of: self freeAfterUse: true.
	self withReturnHandlerDo: [ 
		self
			repository_index: index
			repo: self ].
		
	^ index