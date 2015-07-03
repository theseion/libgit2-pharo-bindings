helpers
createSubTreeWith: aBlob
	| builder |
	builder := LGitTreeBuilder of: repository.
	builder createNew.
	builder addEntry: aBlob filename: 'foo'.
	^ builder newTree