foreign interface
merge_commits: out repo: repo our_commit: our_commit their_commit: their_commit opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_merge_commits(LG2GitIndexO * out, LG2GitRepositoryO repo, LG2GitCommitO our_commit, LG2GitCommitO their_commit, git_merge_tree_opts * opts)) options: #(  )