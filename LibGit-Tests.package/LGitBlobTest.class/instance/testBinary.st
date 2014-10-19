tests
testBinary

	| repository blob nonPrintableCharacters |
	repository := self newRepo state3Opened.
	nonPrintableCharacters := #[ 15 0 0 248 ].
	blob := LGitBlob newFromExternalCollection: nonPrintableCharacters of: repository.
	self assert: blob isBinary