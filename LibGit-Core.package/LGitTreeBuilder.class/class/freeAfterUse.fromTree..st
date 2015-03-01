instance creation
freeAfterUse: aBoolean fromTree: aTree
	^ self
		of: aTree repository
		freeAfterUse: true
		fromTree: aTree