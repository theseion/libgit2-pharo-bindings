instance creation
newFromString: aString of: aRepository
	^ self
		newFromExternalCollection: aString
		of: aRepository