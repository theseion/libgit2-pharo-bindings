private
pull
	self directory exists
		ifFalse: [ self createCloneRepository ]
		ifTrue: [
			pullTimeStamp := DateAndTime now.
			LGitGlobal runSequence: [ 
				[
					(LGitRemote
					of: (LGitRepository on: self directory) open
					named: 'origin'
					url: self repoUrl
					fetchSpec: '+refs/heads/*:refs/remotes/origin/*') pull
				] on: LGit_GIT_ERROR do: [
					self inform: 'No internet connection. Did not perform pull.' ] ] ]