libgit - calls
treebuilder_create: out source: source 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_treebuilder_create(LGitTreeBuilder ** out, LGitTree * source)) options: #( optCoerceNilToNull )