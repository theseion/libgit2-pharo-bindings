foreign interface
repository_open_bare: out bare_path: bare_path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_open_bare(LG2GitRepositoryO * out, NBExternalString bare_path)) options: #(  )