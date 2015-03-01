helpers
createBlob
	| directory |
	directory := (repository workingDirectory / 'libgit_tests') ensureCreateDirectory.
	directory / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	^ LGitBlob
		of: repository
		freeAfterUse: true
		fromFile: directory / 'foo'