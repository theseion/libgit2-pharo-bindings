foreign interface
treebuilder_insert: out bld: bld filename: filename id: id filemode: filemode 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_treebuilder_insert(LG2GitTreeEntryO * out, LG2GitTreebuilderO bld, NBExternalString filename, git_oid * id, git_filemode_t filemode)) options: #(  )