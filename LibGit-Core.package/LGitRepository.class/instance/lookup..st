lookup
lookup: name
	| reference returnCode |
	reference := LGitReference of: self.
	returnCode := self
		reference_lookup: reference 
		repo: self 
		shorthand: name.
	
	returnCode = (self libGitReturnCodeTypes at: #GIT_OK) ifFalse: [ Error signal ].
	
	self flag: 'handle errors'.
	^ reference