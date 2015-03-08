foreign interface
repository_init_ext: out repo_path: repo_path opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_init_ext(LG2GitRepositoryO * out, NBExternalString repo_path, git_repository_init_options * opts)) options: #(  )