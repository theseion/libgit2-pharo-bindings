foreign interface
repository_path: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_repository_path(LG2GitRepositoryO repo)) options: #(  )