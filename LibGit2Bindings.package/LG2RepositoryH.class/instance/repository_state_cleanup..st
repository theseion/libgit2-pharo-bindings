foreign interface
repository_state_cleanup: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_state_cleanup(LG2GitRepositoryO repo)) options: #(  )