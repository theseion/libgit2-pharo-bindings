repository states
clonedSSH
	| repo remote credentials signature |
	repo := self state2Initialized.
	remote := LGitRemote 
		of: repo 
		named: 'origin' 
		url: self repositoryUrlSsh
		fetchSpec: '+refs/heads/*:refs/remotes/origin/*'.
	remote create.
	credentials := LGitCredentialsSSH
		username: self usernameSsh
		passphrase: self keyPassPhrase
		publicKeyReference: self keyFilePublic asFileReference
		privateKeyReference: self keyFilePrivate asFileReference.
	remote callbacks credentials: [ :cred :url :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	remote setCallbacksFinally.
	
	signature := LGitSignature new
		name: 'Bart Simpson';
		email: 'bartman@gotham.com';
		when: DateAndTime now;
		yourself.
	repo
		cloneRemote: remote
		signature: signature.
		
	^ repo
		open;
		yourself