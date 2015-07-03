helpers
touchFile
	1 second asDelay wait.
	self file writeStreamDo: [ :stream |
		stream nextPutAll: 'extra text' ]