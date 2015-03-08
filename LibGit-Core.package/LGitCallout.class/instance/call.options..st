native-boost
call: functionSpec options: options
	^ self nbCallout
		context: thisContext sender;
		options: options;
		function: functionSpec address: [ handle ]