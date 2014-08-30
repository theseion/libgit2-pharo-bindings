tests
testPushSSH
	<todo: 'use a local repository once libgit2 supports cloning from fs'>
	| repo directory head blob author builder treeId rootBuilder tree remote push credentials |
	repo := self newRepo clonedSSH.
	directory := (repo workingDirectory / 'libgit_tests') ensureCreateDirectory.
	directory / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	head := (LGitCommit of: repo) id: repo head resolve; lookup.
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
	
	(LGitCommit of: repo)
		writeTree: tree
		message: 'push test'
		parents: { head }
		reference: 'refs/heads/master'
		author: author
		committer: author.
	
	remote := (LGitRemote of: repo named: 'origin') load.
	credentials := LGitCredentialsSSH
		username: self newRepo username
		passphrase: self newRepo keyPassPhrase
		publicKeyReference: self newRepo keyFilePublic asFileReference
		privateKeyReference: self newRepo keyFilePrivate asFileReference.
	remote callbacks credentials: [ :cred :url :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	remote setCallbacksFinally.
	push := LGitPush 
		remote: remote
		refSpec: (LGitRefSpec fromString: 'refs/heads/master:refs/heads/libgit').
	self shouldnt: [ push finish ] raise: LGitError