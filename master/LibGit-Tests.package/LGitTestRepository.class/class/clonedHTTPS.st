repository states
clonedHTTPS
	^ (self state0MissingReference)
		cloneHttps: self repositoryUrlHttps;
		open;
		yourself