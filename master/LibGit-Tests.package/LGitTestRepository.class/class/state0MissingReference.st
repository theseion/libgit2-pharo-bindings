repository states
state0MissingReference
	self assert: self reference exists not.
	
	^ LGitRepository on: self reference