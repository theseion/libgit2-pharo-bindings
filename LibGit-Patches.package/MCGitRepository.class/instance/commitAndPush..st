private
commitAndPush: aVersion
	| repo index tree signature refName credentials push gitRemote credentialsCallback |
	repo := LGitRepository on: self directory.
	self assert: repo isProperRepository.
	repo open.
	index := repo index.
	index
		addAll;
		updateAll;
		writeToDisk.
	tree := (LGitTree of: repo) id: index writeTreeAndReturnOid.
	tree id freeAfterUse: true.
	tree lookup.
	signature := repo defaultSignature
		freeAfterUse: true;
		yourself.
	refName := repo head name.
	(LGitCommitBuilder of: repo)
		tree: tree;
		message: aVersion info message;
		parents: {(repo head object)};
		updateReference: (repo lookup: refName);
		author: signature;
		committer: signature;
		writeCommit.
	gitRemote := (LGitRemote of: repo named: 'origin') load.
	credentials := gitRemote class credentialsSsh.
	credentialsCallback := LGitCredAcquireCallback
		on: [ :cred :url :username_from_url :allowed_types :data | 
			credentials createWith: cred.
			0 ].
	gitRemote callbacks credentials: credentialsCallback.
	gitRemote setCallbacksFinally.
	push := LGitPush remote: gitRemote refSpec: (LGitRefSpec fromString: refName , ':' , refName).
	push finish