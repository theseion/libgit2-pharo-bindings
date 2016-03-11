tests
testCreateFromByteArray
	| blob nonPrintableCharacters |
	repository := self newRepo state3Opened.
	nonPrintableCharacters := #[15 0 0 248].
	blob := LGitBlob of: repository fromString: nonPrintableCharacters.
	self assert: blob contents equals: nonPrintableCharacters