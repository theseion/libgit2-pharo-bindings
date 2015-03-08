testing
canHandle: aReturnCode
	^ (self handledReturnCodes collect: [ :symbol | 
		self libGitReturnCodeTypes at: symbol ]) includes: aReturnCode