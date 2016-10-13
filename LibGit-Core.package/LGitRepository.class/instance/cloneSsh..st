operations
cloneSsh: aString
	| options credentials credentialsCallback callbacks fetchOptions  |
	credentials := LGitRemote credentialsSsh.
	credentialsCallback := LGitCredAcquireCallback
		on: [ :cred :url :username_from_url :allowed_types :data | 
			allowed_types = 32 
				ifTrue: [ credentials setGitUsernameIn: cred ]
				ifFalse: [ credentials createWith: cred ].
			0 ].

	callbacks := LGitRemoteCallbacks defaults
		credentials: credentialsCallback;
		yourself.
	fetchOptions := LGitFetchOptions defaults
		callbacks: callbacks;
		yourself.
	options := LGitCloneOptions defaults
		fetchOptions: fetchOptions;
		yourself.
	
	self
		clone: aString
		options: options
	