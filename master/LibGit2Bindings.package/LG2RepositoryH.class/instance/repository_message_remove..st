foreign interface
repository_message_remove: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_message_remove(LG2GitRepositoryO repo)) options: #(  )