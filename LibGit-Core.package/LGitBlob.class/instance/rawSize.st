private-accessing
rawSize
	self signalIfNotReady.
	
	^ self blob_rawsize: self