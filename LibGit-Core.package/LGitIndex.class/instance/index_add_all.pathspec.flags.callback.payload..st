libgit - calls
index_add_all: index pathspec: pathspec flags: flags callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_index_add_all(self, LG2GitStrarrayS * pathspec, int flags, LG2GitIndexMatchedPathCb callback, void * payload)) options: #( optMayGC optCoerceNilToNull )