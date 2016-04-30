tests
testDefaultSignature
	| repo signature |
	repo := self newRepo state2Initialized.
	[ 
		signature := repo defaultSignature.
		self assert: signature dateAndTime asDate equals: Date today
	] on: LGit_GIT_ENOTFOUND do: [ :ex | 
		"Config value 'user.name' was not found" ]
	
