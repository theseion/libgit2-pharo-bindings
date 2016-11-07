operations
clone: aString
	| credentials cloneOptions tries |
	Transcript show: 'Cloning: '; show: aString; cr; flush.
	credentials := LGitRemote credentialsSsh.
	tries := 0.
	cloneOptions := LGitCloneOptions withCredentialsCallback: 
		[ :cred :url :username_from_url :allowed_types :data |
			tries = 0 
				ifTrue: [
					Transcript show: cred; show: allowed_types; cr; flush.
					(LGitCredentialsPlaintext username: 'npasserini' passphrase: 'cabezon77') createWith: cred.
					Transcript show: 'FIn!'; cr; flush.
					0
				]
				ifFalse: [ 
					Transcript show: 'Failed'; cr; flush. 
					1
				]
		].
	
	self
		clone: aString
		options: cloneOptions	
