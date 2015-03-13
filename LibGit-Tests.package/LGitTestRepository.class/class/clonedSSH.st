repository states
clonedSSH
	^ self state0MissingReference
		cloneSsh: self repositoryUrlSsh;
		open;
		yourself