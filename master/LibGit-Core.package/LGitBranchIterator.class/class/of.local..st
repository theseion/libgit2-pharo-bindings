instance creation
of: aRepository local: aBoolean
	^ (self of: aRepository)
		iterateLocal: aBoolean;
		yourself