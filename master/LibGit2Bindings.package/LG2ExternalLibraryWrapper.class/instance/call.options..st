utils
call: fnSpec options: callOptions
	" you can override this method if you need to"

	^ (self nbCalloutIn: thisContext sender)
		cdecl;
		options: callOptions;
		function: fnSpec module: self libraryNameOrHandle
