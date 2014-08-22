comparing
= anObject
	self == anObject ifTrue: [ ^ true ].
	self class == anObject class ifFalse: [ ^ false ].
	
	^ (self 
		reference_cmp: self 
		ref2: anObject) = (self libGitReturnCodeTypes at: #GIT_OK) 
	