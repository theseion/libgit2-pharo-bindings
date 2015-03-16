foreign interface
repository_head: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_head(LG2GitReferenceO * out, LG2GitRepositoryO repo)) options: #(  )