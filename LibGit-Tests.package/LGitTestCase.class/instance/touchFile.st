helpers
touchFile
	50 milliSecond asDelay wait.
	self file writeStreamDo: [ :stream |
		stream nextPutAll: 'extra text' ]