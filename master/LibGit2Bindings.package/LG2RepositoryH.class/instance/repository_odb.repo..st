foreign interface
repository_odb: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_odb(LG2GitOdbO * out, LG2GitRepositoryO repo)) options: #(  )