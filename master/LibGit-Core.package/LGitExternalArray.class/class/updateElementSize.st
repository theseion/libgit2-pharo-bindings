as yet unclassified
updateElementSize
	self == LGitExternalArray ifTrue: [ ^ self ].
	
	super updateElementSize