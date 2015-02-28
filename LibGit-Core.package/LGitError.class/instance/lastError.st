accessing
lastError
	^ lastError ifNil: [
		self giterr_last
			ifNil: [ 'no error message set by libgit2' ]
			ifNotNil: [ :error | error message ] ]