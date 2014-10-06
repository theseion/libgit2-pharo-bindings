libgit - calls
status_foreach: repo callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_status_foreach(LGitRepository repo, LG2GitStatusCb callback, void * payload)) options: #( optMayGC optCoerceNilToNull )