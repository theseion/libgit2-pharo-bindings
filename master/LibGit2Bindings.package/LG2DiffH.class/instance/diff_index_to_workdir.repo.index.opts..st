foreign interface
diff_index_to_workdir: diff repo: repo index: index opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_index_to_workdir(LG2GitDiffO * diff, LG2GitRepositoryO repo, LG2GitIndexO index, git_diff_options * opts)) options: #(  )