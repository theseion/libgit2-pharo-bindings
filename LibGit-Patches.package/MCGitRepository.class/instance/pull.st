private
pull
	self directory exists
		ifFalse: [ self createCloneRepository ]
		ifTrue: [
			pullTimeStamp := DateAndTime now.
			LGitGlobal runSequence: [ 
				[
					| credentials credentialsCallback |
					credentials := LGitRemote credentialsSsh.
					credentialsCallback := LGitCredAcquireCallback
						on: [ :cred :url :username_from_url :allowed_types :data | 
							credentials createWith: cred.
							0 ].
					(LGitRemote
					of: (LGitRepository on: self directory) open
					named: 'origin'
					url: self repoUrl
					fetchSpec: '+refs/heads/*:refs/remotes/origin/*') pullWithFetchOptions: (LGitFetchOptions defaults
						callbacks: (LGitRemoteCallbacks defaults
							credentials: credentialsCallback;
							yourself);
						yourself).
				] on: LGit_GIT_ERROR do: [
					self inform: 'No internet connection. Did not perform pull.' ] ] ]