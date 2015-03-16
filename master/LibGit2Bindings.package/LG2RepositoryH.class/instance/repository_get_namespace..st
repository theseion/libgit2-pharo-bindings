foreign interface
repository_get_namespace: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_repository_get_namespace(LG2GitRepositoryO repo)) options: #(  )