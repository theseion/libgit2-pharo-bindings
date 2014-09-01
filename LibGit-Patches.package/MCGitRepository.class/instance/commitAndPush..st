private
commitAndPush: aVersion
	| repo index tree signature refName credentials push gitRemote |
	repo := LGitRepository on: self directory.
	self assert: repo isProperRepository.
	repo open.
	index := repo index.
	index
		removeAll;
		addAll.
	tree := (LGitTree of: repo) id: index writeTreeAndReturnOid.
	tree lookup.
	signature := repo defaultSignature.
	refName := repo head name.
	(LGitCommitBuilder of: repo)
		tree: tree;
		message: aVersion info message;
		parents: { repo head object };
		updateReference: refName;
		author: signature;
		committer: signature;
		writeCommit.
		
	gitRemote := (LGitRemote of: repo named: 'origin') load.
	credentials := LGitCredentialsSSH
		username: LGitTestRepository usernameSsh
		passphrase: LGitTestRepository keyPassPhrase
		publicKeyReference: LGitTestRepository keyFilePublic asFileReference
		privateKeyReference: LGitTestRepository keyFilePrivate asFileReference.
	gitRemote callbacks credentials: [ :cred :url :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	gitRemote setCallbacksFinally.
	push := LGitPush 
		remote: gitRemote
		refSpec: (LGitRefSpec fromString: refName,':', refName).
	push finish