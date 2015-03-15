native-boost
call: fnSpec options: options
	"In case the call is not yet inside of a sequence, at least wrap
	this call individually"
	| sender |
	sender := thisContext sender.
	^ LGitGlobal runSequence: [
		LGitFunctionReturn 
			methodSelector: sender method selector
			value: ((self nbCalloutIn: sender)
				cdecl;	
				options: options;
				function: fnSpec module: LGitGlobal libraryNameOrHandle) ]