tests
testCreateReference
	| blob ref blob2 |
	repository := self newRepo state3Opened.
	blob := LGitBlob of: repository fromString: 'eat my shorts'.
	repository createTag: 'mytag' targetId: blob id force: true.
	
	ref := repository lookup: 'refs/tags/mytag'.
	blob2 := ref object.
	self assert: blob2 equals: blob