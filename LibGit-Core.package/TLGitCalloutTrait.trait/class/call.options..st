native-boost
call: fnSpec options: options
	"In case the call is not yet inside of a sequence, at least wrap
	this call individually"
"	| sender |
	sender := thisContext sender.
	^ LGitGlobal runSequence: [
		LGitFunctionReturn 
			methodSelector: sender method selector
			value: ((self ffiCalloutIn: sender)
				cdecl;	
				options: options;
				function: fnSpec module: LGitLibrary) ]
			
		TODO: implement an alternative to perform safe calls 
"			
	^ (self ffiCalloutIn: thisContext)
		cdecl;
		options: options;
		function: fnSpec module: self ffiLibraryName