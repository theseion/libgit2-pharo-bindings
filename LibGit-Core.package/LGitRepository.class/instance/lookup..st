lookup
lookup: name
	<todo: 'use proper exceptions'>
	| reference returnCode |
	reference := LGitReference of: self.
	returnCode := self
		reference_lookup: reference 
		repo: self 
		shorthand: name.
	
	returnCode = (self libGitReturnCodeTypes at: #GIT_OK) ifFalse: [ Error signal ].

	^ reference