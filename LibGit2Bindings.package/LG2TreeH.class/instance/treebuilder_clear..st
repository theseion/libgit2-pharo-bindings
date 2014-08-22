foreign interface
treebuilder_clear: bld 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_treebuilder_clear(LG2GitTreebuilderO bld)) options: #(  )