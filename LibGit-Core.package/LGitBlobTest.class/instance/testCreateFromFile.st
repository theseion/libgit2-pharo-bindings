tests
testCreateFromFile

	| blob repository |
	repository := self newRepo state3Opened.
	
	(self newRepo reference / 'foo') 
		writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	
	blob := LGitBlob newFromFile: self newRepo reference / 'foo' of: repository.

	self assert: blob contents equals: 'eat my shorts'.
