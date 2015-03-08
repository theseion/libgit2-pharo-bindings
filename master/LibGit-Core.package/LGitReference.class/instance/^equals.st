comparing
= anObject
	self class == anObject class ifFalse: [ ^ false ].
	
	^ self == anObject or: [
		(self 
			reference_cmp: self 
			ref2: anObject) = (self libGitReturnCodeTypes at: #GIT_OK)  ]
	