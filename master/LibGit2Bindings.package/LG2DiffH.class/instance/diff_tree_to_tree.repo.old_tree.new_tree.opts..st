foreign interface
diff_tree_to_tree: diff repo: repo old_tree: old_tree new_tree: new_tree opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_tree_to_tree(LG2GitDiffO * diff, LG2GitRepositoryO repo, LG2GitTreeO old_tree, LG2GitTreeO new_tree, git_diff_options * opts)) options: #(  )