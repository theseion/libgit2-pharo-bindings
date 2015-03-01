tests
testPushSSH
	<todo: 'use a local repository once libgit2 supports cloning from fs'>
	| repo directory head blob author builder treeId rootBuilder tree remote push credentials credentialsCallback |
	repo := self newRepo clonedSSH.
	directory := (repo workingDirectory / 'libgit_tests') ensureCreateDirectory.
	directory / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	head := repo head object.
	blob := LGitBlob
		of: repo
		freeAfterUse: true
		fromFile: directory / 'foo'.
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
		dateAndTime: DateAndTime now;
		yourself.
	
	(LGitCommitBuilder of: repo freeAfterUse: true)
		tree: tree;
		message: 'push test';
		parents: { head };
		updateReference: repo master;
		author: author;
		committer: author;
		writeCommit.
	
	remote := (LGitRemote
		of: repo
		freeAfterUse: true
		named: 'origin') load.
	credentials := remote class credentialsSsh.
	credentialsCallback := LGitCredAcquireCallback on: [ :cred :url :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	remote callbacks credentials: credentialsCallback.
	remote setCallbacksFinally.
	push := LGitPush 
		remote: remote
		refSpec: (LGitRefSpec fromString: 'refs/heads/master:refs/heads/libgit').
	self shouldnt: [ push finish ] raise: LGitError