session management
updateElementSize
	self == LGitExternalArray ifTrue: [ ^ self ].
	
	super updateElementSize