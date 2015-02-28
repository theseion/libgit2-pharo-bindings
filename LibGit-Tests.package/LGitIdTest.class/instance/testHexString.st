tests
testHexString
	| id bytes |
	bytes := (0 to: 255) asByteArray shuffle first: 20.
	id := LGitId fromByteArray: bytes.
		
	self
		assert: id hexString
		equals: bytes hex