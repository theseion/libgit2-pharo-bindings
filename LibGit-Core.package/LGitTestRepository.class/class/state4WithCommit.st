repository states
state4WithCommit
	| repo directory blob builder treeId rootBuilder tree author |
	repo := self state3Opened.
	directory := (repo workingDirectory / 'libgit_tests') ensureCreateDirectory.
	directory / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	blob := LGitBlob newFromFile: directory / 'foo' of: repo.
	builder := LGitTreeBuilder of: repo.
	builder createNew.
	builder addEntry: blob filename: 'foo'.
	treeId := builder write.
	rootBuilder := LGitTreeBuilder of: repo.
	rootBuilder createNew.
	rootBuilder addEntryWithId: treeId filename: 'libgit_tests' filemode: (LG2GitFilemodeTE at: #GIT_FILEMODE_TREE) value.
	tree := rootBuilder newTree.
	author := LGitSignature new
		name: 'Bart Simpson';
		email: 'bartman@gotham.com';
		setDateAndTime: DateAndTime now;
		yourself.
	
	(LGitCommitBuilder of: repo)
		tree: tree;
		message: 'push test';
		parents: { };
		updateReference: 'refs/heads/master';
		author: author;
		committer: author;
		writeCommit.
	
	repo index
		addAll;
		updateAll;
		writeToDisk.
	
	^ repo