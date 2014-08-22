foreign interface
repository_config: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_config(LG2GitConfigO * out, LG2GitRepositoryO repo)) options: #(  )