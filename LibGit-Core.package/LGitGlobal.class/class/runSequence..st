operations
runSequence: aBlock
	LGitActionSequence value ifNotNil: aBlock.
	
	LGitActionSequence
		value: thisContext sender
		during: [ [
			self initializeLibGit2.
			aBlock value ] ensure: [ self shutdownLibGit2 ] ]