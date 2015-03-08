foreign interface
treebuilder_remove: bld filename: filename 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_treebuilder_remove(LG2GitTreebuilderO bld, NBExternalString filename)) options: #(  )