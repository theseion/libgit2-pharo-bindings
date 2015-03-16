foreign interface
merge_trees: out repo: repo ancestor_tree: ancestor_tree our_tree: our_tree their_tree: their_tree opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_merge_trees(LG2GitIndexO * out, LG2GitRepositoryO repo, LG2GitTreeO ancestor_tree, LG2GitTreeO our_tree, LG2GitTreeO their_tree, git_merge_tree_opts * opts)) options: #(  )