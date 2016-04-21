tests
testEqualsSimple
	| id1 id2 id3 bytes |
	bytes := (0 to: 255) asByteArray shuffle first: 20.
	id1 := LGitId fromByteArray: bytes.
	id2 := LGitId fromByteArray: bytes.
	id3 := LGitId fromByteArray: bytes shuffle.
		
	self assert: id1 = id2.
	self deny: id1 == id2.
	self deny: id1 = id3.