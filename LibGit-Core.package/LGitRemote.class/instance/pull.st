operations
pull
	<todo: 'check for conflicts'>
	| credentials |
	self repository isReady ifFalse: [  ^ self ].

	self
		load;
		initializeCallbacks.
	
	credentials := LGitCredentialsSSH
		username: LGitTestRepository usernameSsh
		passphrase: LGitTestRepository keyPassPhrase
		publicKeyReference: LGitTestRepository keyFilePublic asFileReference
		privateKeyReference: LGitTestRepository keyFilePrivate asFileReference.
	self callbacks credentials: [ :cred :theUrl :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	self setCallbacksFinally.
	
	
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			signature: self repository defaultSignature
			reflog_message: 'automatic pull from libgit2' ].
	
	"assume that there are no confilcts and fast-forwad to FETCH_HEAD"
	self repository fastForward