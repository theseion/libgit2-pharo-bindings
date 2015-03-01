instance creation
of: aRepository freeAfterUse: aBoolean named: nameString url: urlString
	^ self
		of: aRepository
		freeAfterUse: aBoolean
		named: nameString
		url: urlString
		fetchSpec: nil