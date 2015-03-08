foreign interface
index_add_all: index pathspec: pathspec flags: flags callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_add_all(LG2GitIndexO index, git_strarray * pathspec, NBUInt32 flags, LG2GitIndexMatchedPathCb callback, NBVoid * payload)) options: #( optMayGC )