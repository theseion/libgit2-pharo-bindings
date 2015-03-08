native-boost
call: fnSpec options: options
	^ LGitFunctionReturn 
		methodSelector: thisContext sender method selector
		value: ((self nbCalloutIn: thisContext sender)
			cdecl;	
			options: options;
			function: fnSpec module: self libraryNameOrHandle)