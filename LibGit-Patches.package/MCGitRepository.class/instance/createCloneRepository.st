private
createCloneRepository
	[ (LGitRepository on: self projectPath asFileReference)
		clone: self remote;
		checkout: self projectVersion ] asLibGitActionSequence.