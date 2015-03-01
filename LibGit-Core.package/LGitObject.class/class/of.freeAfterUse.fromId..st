instance creation
of: aRepository freeAfterUse: aBoolean fromId: id
	^ (self of: aRepository freeAfterUse: aBoolean)
		initializeWithId: id;
		yourself