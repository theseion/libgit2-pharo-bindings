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
	credentials := remote class credentialsSsh.
	remote callbacks credentials: [ :cred :url :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	remote setCallbacksFinally.
	
	signature := LGitSignature new
		setName: 'Bart Simpson';
		setEmail: 'bartman@gotham.com';
		setDateAndTime: DateAndTime now;
		yourself.
	repo
		cloneRemote: remote
		signature: signature.
		
	^ repo
		open;
		yourself