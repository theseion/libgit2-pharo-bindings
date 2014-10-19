tests
testCreateFromNonExternalCollection

	| repository nonPrintableCharacters |
	repository := self newRepo state3Opened.
	nonPrintableCharacters := { 15. 0. 0. 248 }.
	self
		should: [ LGitBlob newFromExternalCollection: nonPrintableCharacters of: repository ]
		raise: AssertionFailure