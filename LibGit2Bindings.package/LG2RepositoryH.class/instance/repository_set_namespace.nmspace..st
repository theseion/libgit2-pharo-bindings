foreign interface
repository_set_namespace: repo nmspace: nmspace 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_set_namespace(LG2GitRepositoryO repo, NBExternalString nmspace)) options: #(  )