foreign interface
index_remove_all: index pathspec: pathspec callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_remove_all(LG2GitIndexO index, git_strarray * pathspec, LG2GitIndexMatchedPathCb callback, NBVoid * payload)) options: #( optMayGC )