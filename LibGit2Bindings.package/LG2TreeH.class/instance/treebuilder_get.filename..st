foreign interface
treebuilder_get: bld filename: filename 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitTreeEntryO git_treebuilder_get(LG2GitTreebuilderO bld, NBExternalString filename)) options: #(  )