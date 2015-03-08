foreign interface
repository_message: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_message(git_buf * out, LG2GitRepositoryO repo)) options: #(  )