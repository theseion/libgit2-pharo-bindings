private
pull
	[ (LGitRemote 
		of: (LGitRepository on: self directory) open
		named: 'origin' 
		url: self remote
		fetchSpec: '+refs/heads/*:refs/remotes/origin/*') pull
	 ] asLibGitActionSequence