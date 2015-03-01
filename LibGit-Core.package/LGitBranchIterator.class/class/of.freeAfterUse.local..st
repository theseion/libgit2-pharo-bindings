instance creation
of: aRepository freeAfterUse: shouldFree local: isLocal
	^ (self of: aRepository freeAfterUse: shouldFree)
		iterateLocal: isLocal;
		yourself