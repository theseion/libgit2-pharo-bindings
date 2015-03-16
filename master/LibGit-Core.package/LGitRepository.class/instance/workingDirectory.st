accessing
workingDirectory
	self signalIfNotReady.
	
	^ self withReturnHandlerDo: [ (self repository_workdir: self) asFileReference ]