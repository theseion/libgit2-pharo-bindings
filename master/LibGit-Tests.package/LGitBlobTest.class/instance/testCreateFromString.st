tests
testCreateFromString
	| blob repository |
	repository := self newRepo state3Opened.
	blob := LGitBlob of: repository fromString: 'eat my shorts'.
	self assert: blob contents equals: 'eat my shorts'