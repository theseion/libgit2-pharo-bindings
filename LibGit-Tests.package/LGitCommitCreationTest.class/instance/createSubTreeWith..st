helpers
createSubTreeWith: aBlob
	| builder |
	builder := LGitTreeBuilder
		of: repository
		freeAfterUse: true.
	builder createNew.
	builder addEntry: aBlob filename: 'foo'.
	^ builder write