libgit - calls
index_update_all: index pathspec: pathspec callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	"^self call: #(LGitReturnCodeEnum git_index_update_all(self, LG2GitStrarrayS * pathspec, NBExternalAddress callback, NBVoid * payload)) options: #( optMayGC )"
	^self call: #(LGitReturnCodeEnum git_index_update_all(self, LG2GitStrarrayS * pathspec, LG2GitIndexMatchedPathCb callback, NBVoid * payload)) options: #( optMayGC )