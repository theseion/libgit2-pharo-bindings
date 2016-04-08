native-boost
callUnchecked: fnSpec options: options

	^ (self ffiCalloutIn: thisContext)
		cdecl;
		options: options;
		function: fnSpec module: self ffiLibraryName