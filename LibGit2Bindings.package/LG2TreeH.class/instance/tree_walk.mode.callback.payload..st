foreign interface
tree_walk: tree mode: mode callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tree_walk(LG2GitTreeO tree, git_treewalk_mode mode, LG2GitTreewalkCb callback, NBVoid * payload)) options: #( optMayGC )