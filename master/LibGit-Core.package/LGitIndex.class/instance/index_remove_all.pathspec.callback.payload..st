libgit - calls
index_remove_all: index pathspec: pathspec callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_index_remove_all(self, LGitStringArray * pathspec, LGitIndexMatchedPathCallback callback, NBVoid * payload)) options: #( optMayGC optCoerceNilToNull )