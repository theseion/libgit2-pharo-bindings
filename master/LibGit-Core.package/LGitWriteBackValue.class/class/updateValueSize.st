session management
updateValueSize
	self == LGitWriteBackValue ifTrue: [  ^ self ].
	
	super updateValueSize