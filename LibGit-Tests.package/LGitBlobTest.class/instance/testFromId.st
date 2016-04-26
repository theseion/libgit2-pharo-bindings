tests
testFromId
	| blob blob2 |
	repository := self newRepo state3Opened.
	blob := LGitBlob of: repository fromString: 'eat my shorts'.
	
	blob2 := LGitBlob of: repository fromId: blob id.
	self assert: blob2 contents equals: 'eat my shorts'.
	self assert: blob2 equals: blob