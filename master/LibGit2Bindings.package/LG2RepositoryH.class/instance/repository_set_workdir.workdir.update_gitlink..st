foreign interface
repository_set_workdir: repo workdir: workdir update_gitlink: update_gitlink 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_set_workdir(LG2GitRepositoryO repo, NBExternalString workdir, NBInt32 update_gitlink)) options: #(  )