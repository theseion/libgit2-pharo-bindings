helpers
createRootTreeWith: aTreeId
	| builder |
	builder := LGitTreeBuilder of: repository.
	builder createNew.
	builder addEntryWithId: aTreeId filename: 'libgit_tests' filemode: (LGitFilemodeEnum at: #GIT_FILEMODE_TREE) value.
	^ builder newTree