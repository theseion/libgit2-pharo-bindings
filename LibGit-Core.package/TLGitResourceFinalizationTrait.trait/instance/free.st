libgit-finalization
free
	self getHandle isExternalAddress 
		ifTrue: [ self class finalizeResourceData: self getHandle ]