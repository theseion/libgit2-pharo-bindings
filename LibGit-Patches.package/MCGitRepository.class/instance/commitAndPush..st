private
commitAndPush: aVersion
	| credentials credentialsCallback |
	LGitGlobal runSequence: [
		| repo index tree signature gitRemote reference parent |
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
		gitRemote
			pushWithRefSpec: (LGitRefSpec fromString: reference name , ':' , reference name)
			pushOptions: (LGitPushOptions defaults
				callbacks: (LGitRemoteCallbacks defaults
					credentials: credentialsCallback;
					yourself);
				yourself). ]