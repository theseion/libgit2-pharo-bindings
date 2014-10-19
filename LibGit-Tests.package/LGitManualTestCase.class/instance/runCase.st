running
runCase
	self isEnabled ifFalse: [ ^ self ].
	super runCase