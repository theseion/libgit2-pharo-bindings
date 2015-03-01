tests
testCreateFromFile
	| blob repository |
	repository := self newRepo state3Opened.
	self newRepo reference / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	blob := LGitBlob of: repository fromFile: self newRepo reference / 'foo'.
	self assert: blob contents equals: 'eat my shorts'