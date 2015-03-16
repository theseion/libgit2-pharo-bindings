foreign interface
diff_tree_to_workdir_with_index: diff repo: repo old_tree: old_tree opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_tree_to_workdir_with_index(LG2GitDiffO * diff, LG2GitRepositoryO repo, LG2GitTreeO old_tree, git_diff_options * opts)) options: #(  )