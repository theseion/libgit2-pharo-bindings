libgit - calls
branch_iterator_new: out repo: repo list_flags: list_flags 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_branch_iterator_new(LGitBranchIterator * out, LGitRepository repo, LGitBranchTypeEnum list_flags)) options: #(  )