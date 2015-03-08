foreign interface
repository_is_bare: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_is_bare(LG2GitRepositoryO repo)) options: #(  )