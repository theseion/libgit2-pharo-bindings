operations
cloneLocal: aString
	<todo: 'use exceptions instead of assertion'>
	self assert: aString isEmptyOrNil not.
	self assert: (aString beginsWith: 'file://').
	self assert: self repositoryReference notNil.
	
	self withReturnHandlerDo: [ 
		self 
			clone: self
			url: aString
			local_path: self repositoryReference pathString
			options: (self defaultCloneOptions
				freeAfterUse: true;
				yourself) ]