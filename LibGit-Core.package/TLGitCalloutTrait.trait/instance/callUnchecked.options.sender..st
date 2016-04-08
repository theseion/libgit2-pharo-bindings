native-boost
callUnchecked: fnSpec options: options sender: aContext
	"In case the call is not yet inside of a sequence, at least wrap
	this call individually"
"	^ LGitGlobal runSequence: [
		LGitFunctionReturn 
			methodSelector: aContext method selector
			value: ((self nbCalloutIn: aContext)
				cdecl;	
				options: options;
				function: fnSpec module: LGitGlobal libraryNameOrHandle) ]
"
	^ (self ffiCalloutIn: aContext)
		cdecl;
		options: options;
		function: fnSpec module: self ffiLibraryName