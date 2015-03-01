tests
testCreateFromNonExternalCollection

	| repository nonPrintableCharacters |
	repository := self newRepo state3Opened.
	nonPrintableCharacters := { 15. 0. 0. 248 }.
	self
		should: [ LGitBlob
			of: repository
			freeAfterUse: true
			fromExternalCollection: nonPrintableCharacters ]
		raise: AssertionFailure