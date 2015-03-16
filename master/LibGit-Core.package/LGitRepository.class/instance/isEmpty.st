testing
isEmpty
	self exists ifFalse: [ ^ true ].
	
	self signalIfNotReady.
	^ self repository_is_empty: self