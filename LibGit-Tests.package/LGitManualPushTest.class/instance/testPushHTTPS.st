tests
testPushHTTPS
	| repo directory head blob author builder treeId rootBuilder tree remote credentials credentialsCallback |
	repo := self newRepo clonedHTTPS.
	directory := (repo workingDirectory / 'libgit_tests') ensureCreateDirectory.
	directory / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	head := repo head resolve object.
	blob := LGitBlob of: repo fromFile: directory / 'foo'.
	builder := LGitTreeBuilder of: repo.
	builder createNew.
	builder addEntry: blob filename: 'foo'.
	treeId := builder write.
	rootBuilder := LGitTreeBuilder of: repo.
	rootBuilder createNew.
	rootBuilder addEntryWithId: treeId filename: 'libgit_tests' filemode: (LGitFilemodeEnum at: #GIT_FILEMODE_TREE) value.
	tree := rootBuilder newTree.
	author := LGitSignature new
		name: 'Bart Simpson';
		email: 'bartman@gotham.com';
		dateAndTime: DateAndTime now;
		freeAfterUse: true;
		yourself.
	(LGitCommitBuilder of: repo)
		tree: tree;
		message: 'push test';
		parents: {head};
		updateReference: repo master;
		author: author;
		committer: author;
		writeCommit.
	credentials := LGitCredentialsPlaintext username: LGitRemote username passphrase: LGitRemote password.
	remote := (LGitRemote of: repo named: 'origin') lookup.
	credentialsCallback := LGitCredAcquireCallback
		on: [ :cred :url :username_from_url :allowed_types :data | 
			credentials createWith: cred.
			0 ].
	remote callbacks credentials: credentialsCallback.
	remote setCallbacksFinally.
		
	self
		shouldnt: [ remote pushWithRefSpec: (LGitRefSpec fromString: 'refs/heads/master:refs/heads/libgit') ]
		raise: LGitAbstractError.