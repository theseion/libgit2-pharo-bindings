foreign interface
treebuilder_free: bld 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_treebuilder_free(LG2GitTreebuilderO bld)) options: #(  )