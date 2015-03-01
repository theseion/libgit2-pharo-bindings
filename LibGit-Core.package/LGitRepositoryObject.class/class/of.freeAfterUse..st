instance creation
of: aRepository freeAfterUse: aBoolean
	^ self basicNew
		initialize;
		repository: aRepository;
		freeAfterUse: aBoolean;
		yourself