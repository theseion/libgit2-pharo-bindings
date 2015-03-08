foreign interface
repository_is_empty: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_is_empty(LG2GitRepositoryO repo)) options: #(  )