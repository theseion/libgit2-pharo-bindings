tests
testDefaultSignature
	| repo signature |
	repo := self newRepo state2Initialized.
	signature := repo defaultSignature.
	self assert: signature dateAndTime asDate equals: Date today
	
