foreign interface
repository_index: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_index(LG2GitIndexO * out, LG2GitRepositoryO repo)) options: #(  )