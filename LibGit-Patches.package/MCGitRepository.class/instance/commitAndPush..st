private
commitAndPush: aVersion
	| reference parent |
	[ | repo index tree signature credentials gitRemote credentialsCallback |
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
	reference := repo head.	
	parent := repo head object.
	(LGitCommitBuilder of: repo)
		tree: tree;
		message: aVersion info message;
		parents: { parent };
		updateReference: reference;
		author: signature;
		committer: signature;
		writeCommit.
	gitRemote := (LGitRemote of: repo named: 'origin') lookup.
	credentials := gitRemote class credentialsSsh.
	credentialsCallback := LGitCredAcquireCallback
		on: [ :cred :url :username_from_url :allowed_types :data | 
			credentials createWith: cred.
			0 ].
	gitRemote callbacks credentials: credentialsCallback.
	gitRemote setCallbacksFinally.
	gitRemote pushWithRefSpec: (LGitRefSpec fromString: reference name , ':' , reference name) ] asLibGitActionSequence