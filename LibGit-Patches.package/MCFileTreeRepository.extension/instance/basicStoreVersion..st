*LibGit-Patches
basicStoreVersion: aVersion
  | repo index tree signature remote credentials push refName |
self readonly
    ifTrue: [ 
      ^ self
        error:
          'The filetree repository: ' , self description printString
            , ' was created read only.' ].
  MCFileTreeWriter fileOut: aVersion on: self.

	repo := LGitRepository on: self directory.
	self assert: repo isProperRepository.
	repo open.
	index := repo index.
	index addAll.
	tree := (LGitTree of: repo) id: index writeTreeAndReturnOid.
	tree lookup.
	signature := repo defaultSignature.
	refName := repo head name.
	(LGitCommit of: repo)
		writeTree: tree
		message: aVersion info message
		parents: { repo head object }
		reference: refName
		author: signature
		committer: signature.
		
	remote := (LGitRemote of: repo named: 'origin') load.
	credentials := LGitCredentialsSSH
		username: LGitTestRepository usernameSsh
		passphrase: LGitTestRepository keyPassPhrase
		publicKeyReference: LGitTestRepository keyFilePublic asFileReference
		privateKeyReference: LGitTestRepository keyFilePrivate asFileReference.
	remote callbacks credentials: [ :cred :url :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	remote setCallbacksFinally.
	push := LGitPush 
		remote: remote
		refSpec: (LGitRefSpec fromString: refName,':', refName).
	push finish