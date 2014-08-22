native-boost
call: fnSpec
	^ LGitFunctionReturn 
		methodSelector: thisContext sender method selector
		value: ((self nbCalloutIn: thisContext sender)
			cdecl;
			function: fnSpec module: self libraryNameOrHandle)