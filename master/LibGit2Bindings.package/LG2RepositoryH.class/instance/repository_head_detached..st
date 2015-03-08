foreign interface
repository_head_detached: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_head_detached(LG2GitRepositoryO repo)) options: #(  )