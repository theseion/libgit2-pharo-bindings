instance creation
of: aRepository freeAfterUse: aBoolean named: nameString url: urlString fetchSpec: aRefSpec
	^ (self of: aRepository freeAfterUse: aBoolean)
		remoteName: nameString;
		url: urlString;
		fetchSpec: aRefSpec;
		yourself