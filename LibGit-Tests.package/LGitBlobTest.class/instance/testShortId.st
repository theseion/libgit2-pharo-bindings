tests
testShortId
	| blob |
	repository := self newRepo state3Opened.
	blob := LGitBlob of: repository fromString: 'eat my shorts'.
	self assert: (blob id hexString beginsWith: blob shortId)