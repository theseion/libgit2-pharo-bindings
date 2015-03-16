helpers
createRootTreeWith: aTreeId
	| builder |
	builder := LGitTreeBuilder of: repository.
	builder createNew.
	builder addEntryWithId: aTreeId filename: 'libgit_tests' filemode: LGitFilemodeEnum GIT_FILEMODE_TREE.
	^ builder newTree