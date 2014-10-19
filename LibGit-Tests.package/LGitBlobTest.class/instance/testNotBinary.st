tests
testNotBinary

	| repository blob |
	repository := self newRepo state3Opened.
	
	blob := LGitBlob newFromString: 'eat my shorts' of: repository.
	self deny: blob isBinary