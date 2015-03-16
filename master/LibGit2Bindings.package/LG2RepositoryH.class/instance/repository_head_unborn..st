foreign interface
repository_head_unborn: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_head_unborn(LG2GitRepositoryO repo)) options: #(  )