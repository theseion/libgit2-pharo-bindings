native-boost
call: fnSpec options: options
	^ self
		call: fnSpec
		options: options
		sender: thisContext sender