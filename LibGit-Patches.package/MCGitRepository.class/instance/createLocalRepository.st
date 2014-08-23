private
createLocalRepository
	self fileUtils ensureDirectoryExists: self projectPath asFileReference.
	self directory: self projectPath