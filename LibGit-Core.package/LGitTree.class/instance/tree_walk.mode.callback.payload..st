libgit-calls
tree_walk: tree mode: mode callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_tree_walk(LGitTree tree, LGitTreewalkModeEnum mode, LGitTreewalkCallback callback, NBVoid * payload)) options: #( optMayGC optCoerceNilToNull )