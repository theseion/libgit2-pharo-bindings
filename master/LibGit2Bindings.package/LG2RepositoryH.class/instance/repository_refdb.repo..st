foreign interface
repository_refdb: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_refdb(LG2GitRefdbO * out, LG2GitRepositoryO repo)) options: #(  )