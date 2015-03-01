tests
testNotBinary
	| repository blob |
	repository := self newRepo state3Opened.
	blob := LGitBlob of: repository fromString: 'eat my shorts'.
	self deny: blob isBinary