tests
testAsRelativePathString
	| id bytes |
	bytes := (0 to: 255) asByteArray shuffle first: 20.
	id := LGitId fromByteArray: bytes.
		
	self
		assert: id asRelativePathString
		equals: (bytes hex copyFrom: 1 to: 2), '/', (bytes hex copyFrom: 3 to: 40)