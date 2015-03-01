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
	tree := (LGitTree of: repo freeAfterUse: true) id: index writeTreeAndReturnOid.
	tree lookup.
	signature := repo defaultSignature.
	refName := repo head name.
	(LGitCommitBuilder of: repo freeAfterUse: true)
		tree: tree;
		message: aVersion info message;
		parents: { repo head object };
		updateReference: (repo lookup: refName);
		author: signature;
		committer: signature;
		writeCommit.
		
	gitRemote := (LGitRemote
		of: repo
		freeAfterUse: true
		named: 'origin') load.
	credentials := gitRemote class credentialsSsh.
	credentialsCallback := LGitCredAcquireCallback on: [ :cred :url :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	gitRemote callbacks credentials: credentialsCallback.
	gitRemote setCallbacksFinally.
	push := LGitPush 
		remote: gitRemote
		refSpec: (LGitRefSpec fromString: refName,':', refName).
	push finish