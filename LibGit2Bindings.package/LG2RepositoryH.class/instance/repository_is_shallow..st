foreign interface
repository_is_shallow: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_is_shallow(LG2GitRepositoryO repo)) options: #(  )