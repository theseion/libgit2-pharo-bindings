foreign interface
branch_iterator_new: out repo: repo list_flags: list_flags 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_branch_iterator_new(LG2GitBranchIteratorO * out, LG2GitRepositoryO repo, git_branch_t list_flags)) options: #(  )