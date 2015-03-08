foreign interface
repository_workdir: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_repository_workdir(LG2GitRepositoryO repo)) options: #(  )