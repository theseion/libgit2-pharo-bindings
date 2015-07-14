native-boost
call: fnSpec options: options
	self signalIfNotReady.
	
	^ self
		call: fnSpec
		options: options
		sender: thisContext sender