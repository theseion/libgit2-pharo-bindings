accessing
lastError
	^ lastError ifNil: [ self giterr_last message ]