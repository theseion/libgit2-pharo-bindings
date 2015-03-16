tests
testEquals
	self assert: repository head = repository head.
	self deny: repository head == repository head