helpers
touchFile
	| file |
	file := self repository repositoryReference / 'libgit_tests' / 'foo'.
	1 second asDelay wait.
	file writeStreamDo: [ :stream |
		stream nextPutAll: 'extra text' ]