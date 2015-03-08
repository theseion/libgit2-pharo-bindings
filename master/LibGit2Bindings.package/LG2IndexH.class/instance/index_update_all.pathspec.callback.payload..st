foreign interface
index_update_all: index pathspec: pathspec callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_update_all(LG2GitIndexO index, git_strarray * pathspec, LG2GitIndexMatchedPathCb callback, NBVoid * payload)) options: #( optMayGC )