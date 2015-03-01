tests
testCreateFromByteArray

	| blob repository nonPrintableCharacters |
	repository := self newRepo state3Opened.
	nonPrintableCharacters := #[ 15 0 0 248 ].
	blob := LGitBlob
		of: repository
		freeAfterUse: true
		fromString: nonPrintableCharacters.
	
	self assert: blob contents equals: nonPrintableCharacters