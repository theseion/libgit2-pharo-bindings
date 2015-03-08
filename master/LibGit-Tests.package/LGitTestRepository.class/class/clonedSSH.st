repository states
clonedSSH
	| repo remote credentials signature credentialsCallback |
	repo := self state2Initialized.
	remote := LGitRemote
		of: repo
		named: 'origin'
		url: self repositoryUrlSsh
		fetchSpec: '+refs/heads/*:refs/remotes/origin/*'.
	remote create.
	credentials := remote class credentialsSsh.
	credentialsCallback := LGitCredAcquireCallback
		on: [ :cred :url :username_from_url :allowed_types :data | 
			credentials createWith: cred.
			0 ].
	remote callbacks credentials: credentialsCallback.
	remote setCallbacksFinally.
	signature := LGitSignature new
		name: 'Bart Simpson';
		email: 'bartman@gotham.com';
		dateAndTime: DateAndTime now;
		freeAfterUse: true;
		yourself.
	repo cloneRemote: remote signature: signature.
	^ repo
		open;
		yourself