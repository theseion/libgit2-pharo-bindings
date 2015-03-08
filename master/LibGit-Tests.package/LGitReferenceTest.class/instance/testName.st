tests
testName
	self assert: repository head name equals: 'refs/heads/master'.
	self assert: repository branches first name equals: 'refs/heads/master'