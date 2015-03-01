running
tearDown
	| remote push repo credentials credentialsCallback |
	super tearDown.
	repo := self newRepo state3Opened. 
	remote := LGitRemote 
		of: repo
		freeAfterUse: true
		named: 'origin' 
		url: self newRepo repositoryUrlSsh
		fetchSpec: '+refs/heads/*:refs/remotes/origin/*'.
	remote create.
	credentials := remote class credentialsSsh.
	credentialsCallback := LGitCredAcquireCallback on: [ :cred :url :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	remote callbacks credentials: credentialsCallback.
	remote setCallbacksFinally.
	push := LGitPush 
		remote: remote
		refSpec: (LGitRefSpec fromString: ':refs/heads/libgit').
		
	push finish.
	super tearDown