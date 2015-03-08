foreign interface
repository_state: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_state(LG2GitRepositoryO repo)) options: #(  )