tests
testCreateFromString

	| blob repository |
	repository := self newRepo state3Opened.
	
	blob := LGitBlob newFromString: 'eat my shorts' of: repository.
	
	self assert: blob contents equals: 'eat my shorts'.