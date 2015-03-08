foreign interface
treebuilder_write: id repo: repo bld: bld 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_treebuilder_write(git_oid * id, LG2GitRepositoryO repo, LG2GitTreebuilderO bld)) options: #(  )