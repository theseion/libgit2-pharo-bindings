private
pull
	self directory exists
		ifFalse: [ self createCloneRepository ]
		ifTrue: [ 
			[ (LGitRemote 
				of: (LGitRepository on: self directory) open
				freeAfterUse: true
				named: 'origin' 
				url: self repoUrl
				fetchSpec: '+refs/heads/*:refs/remotes/origin/*') pull
			 ] asLibGitActionSequence ]