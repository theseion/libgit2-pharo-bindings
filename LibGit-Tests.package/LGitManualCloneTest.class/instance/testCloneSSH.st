tests
testCloneSSH
	<todo: 'use a local repository once libgit2 supports cloning from fs'>
	| repo remote signature credentials |
	repo := self newRepo state0MissingReference.
	repo exists ifTrue: [ repo repositoryReference deleteAll ].
	self deny: repo exists.
	self deny: repo isProperRepository.

	remote := LGitRemote 
		of: repo 
		named: 'origin' 
		url: self newRepo repositoryUrlSsh
		fetchSpec: '+refs/heads/*:refs/remotes/origin/*'.
	repo create; init.
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
		
	self assert: repo exists.
	self assert: (repo repositoryReference / '.git') exists.
	self assert: (repo repositoryReference / '.git/HEAD') exists.
	
	self assert: repo isProperRepository.
	self
		shouldnt: [ repo open ]
		raise: LGitError