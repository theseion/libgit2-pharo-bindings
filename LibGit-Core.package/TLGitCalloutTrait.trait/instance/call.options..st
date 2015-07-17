native-boost
call: fnSpec options: options
	self signalIfNotReady.
	
	^ self
		callUnchecked: fnSpec
		options: options
		sender: thisContext sender