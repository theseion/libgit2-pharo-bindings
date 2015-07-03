helpers
createRootTreeWith: aTree
	| builder |
	builder := (LGitTreeBuilder of: repository)
		createNew;
		addEntry: aTree filename: 'libgit_tests';
		yourself.
	^ builder newTree