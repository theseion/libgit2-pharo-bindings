tests
testDefaultSignature
	| repo signature |
	repo := self newRepo state2Initialized.
	[ 
		signature := repo defaultSignature.
		self assert: signature dateAndTime asDate equals: Date today
	] on: LGitObjectNotFound do: [ :ex | 
		"Config value 'user.name' was not found" ]
	
