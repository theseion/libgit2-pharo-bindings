foreign interface
repository_free: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_repository_free(LG2GitRepositoryO repo)) options: #(  )