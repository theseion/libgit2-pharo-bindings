accessing
workingDirectory
	^ self withReturnHandlerDo: [
		(self repository_workdir: self) asFileReference ]