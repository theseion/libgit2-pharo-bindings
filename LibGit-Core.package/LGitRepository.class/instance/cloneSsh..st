operations
cloneSsh: aString
	<todo: 'remove temporary LGitRemote'>
	| options credentials credentialsCallback remoteCallbacks remote |
	credentials := LGitRemote credentialsSsh.
	credentialsCallback := LGitCredAcquireCallback
		on: [ :cred :url :username_from_url :allowed_types :data | 
			credentials createWith: cred.
			0 ].
	remote := LGitRemote basicNew
		initializeCallbacks;
		yourself.
	remoteCallbacks :=	remote callbacks.		
	remoteCallbacks
		credentials: credentialsCallback;
		yourself.
		
	options := (self defaultCloneOptions
		remoteCallbacks: remoteCallbacks;
		yourself).
	self
		clone: aString
		options: options