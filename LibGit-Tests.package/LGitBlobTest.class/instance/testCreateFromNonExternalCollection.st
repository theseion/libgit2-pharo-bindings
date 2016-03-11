tests
testCreateFromNonExternalCollection
	| nonPrintableCharacters |
	repository := self newRepo state3Opened.
	nonPrintableCharacters := {15.
	0.
	0.
	248}.
	self should: [ LGitBlob of: repository fromExternalCollection: nonPrintableCharacters ] raise: AssertionFailure