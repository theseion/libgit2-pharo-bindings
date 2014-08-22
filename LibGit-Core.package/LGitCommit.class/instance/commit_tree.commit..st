libgit - calls
commit_tree: tree_out commit: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_commit_tree(LGitTree * tree_out, self)) options: #(  )