instance creation
fromId: id of: aRepository
	^ (self of: aRepository)
		initializeWithId: id;
		yourself