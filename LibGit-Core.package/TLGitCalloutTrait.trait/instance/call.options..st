native-boost
call: fnSpec options: options
	self signalIfNotReady.
	
	^ (self ffiCalloutIn: thisContext)
		cdecl;
		options: options;
		function: fnSpec module: self ffiLibraryName