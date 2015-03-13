operations
clone: aString
	self
		clone: aString
		options: (self defaultCloneOptions
			freeAfterUse: true;
			yourself)