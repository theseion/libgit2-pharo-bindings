tests
testNotBinary
	| repository blob |
	repository := self newRepo state3Opened.
	
	blob := LGitBlob
		of: repository
		freeAfterUse: true
		fromString: 'eat my shorts'.
	self deny: blob isBinary