repository states
clonedSSH
	| repo remote credentials signature credentialsCallback |
	repo := self state2Initialized.
	remote := LGitRemote 
		of: repo
		freeAfterUse: true
		named: 'origin' 
		url: self repositoryUrlSsh
		fetchSpec: '+refs/heads/*:refs/remotes/origin/*'.
	remote create.
	credentials := remote class credentialsSsh.
	credentialsCallback := LGitCredentialsCallback on: [ :cred :url :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	remote callbacks credentials: credentialsCallback.
	remote setCallbacksFinally.
	
	signature := LGitSignature new
		name: 'Bart Simpson';
		email: 'bartman@gotham.com';
		dateAndTime: DateAndTime now;
		yourself.
	repo
		cloneRemote: remote
		signature: signature.
		
	^ repo
		open;
		yourself