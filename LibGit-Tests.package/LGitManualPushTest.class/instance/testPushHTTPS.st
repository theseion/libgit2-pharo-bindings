tests
testPushHTTPS
	| repo directory head blob author builder treeId rootBuilder tree remote push credentials |
	repo := self newRepo clonedHTTPS.
	directory := (repo workingDirectory / 'libgit_tests') ensureCreateDirectory.
	directory / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	head := repo head resolve object.
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
		parents: { head };
		updateReference: 'refs/heads/master';
		author: author;
		committer: author;
		writeCommit.
	
	credentials := LGitCredentialsPlaintext
		username: self newRepo username
		passphrase: self newRepo password.
	remote := (LGitRemote of: repo named: 'origin') load.
	remote callbacks credentials: [ :cred :url :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	remote setCallbacksFinally.
	push := LGitPush 
		remote: remote
		refSpec: (LGitRefSpec fromString: 'refs/heads/master:refs/heads/libgit').
	self shouldnt: [ push finish ] raise: LGitError