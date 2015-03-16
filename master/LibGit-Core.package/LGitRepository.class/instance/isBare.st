testing
isBare
	^ self isProperRepository and: [ self repository_is_bare: self ]