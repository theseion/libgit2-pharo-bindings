tests
testBinary
	| repository blob nonPrintableCharacters |
	repository := self newRepo state3Opened.
	nonPrintableCharacters := #[ 15 0 0 248 ].
	blob := LGitBlob
		of: repository
		freeAfterUse: true
		fromExternalCollection: nonPrintableCharacters.
	self assert: blob isBinary