foreign interface
commit_tree: tree_out commit: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_commit_tree(LG2GitTreeO * tree_out, LG2GitCommitO commit)) options: #(  )