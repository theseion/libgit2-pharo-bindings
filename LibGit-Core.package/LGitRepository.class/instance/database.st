operations
database
	| database |
	database := LG2GitOdbO new.
	self withReturnHandlerDo: [
		self
			repository_odb: database
			repo: self ].
		
	^ database