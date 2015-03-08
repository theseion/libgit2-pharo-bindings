foreign interface
treebuilder_entrycount: bld 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 git_treebuilder_entrycount(LG2GitTreebuilderO bld)) options: #(  )