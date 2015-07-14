native-boost
call: fnSpec options: options
	self isReady ifTrue: [ self signalIfNotReady ].
	
	^ self
		call: fnSpec
		options: options
		sender: thisContext sender