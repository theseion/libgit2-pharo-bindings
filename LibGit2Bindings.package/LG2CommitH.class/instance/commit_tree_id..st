foreign interface
commit_tree_id: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_commit_tree_id(LG2GitCommitO commit)) options: #(  )