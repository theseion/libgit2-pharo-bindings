libgit - calls
branch_lookup: out repo: repo branch_name: branch_name branch_type: branch_type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_branch_lookup(LGitReference * out, self, String branch_name, LG2GitBranchTE branch_type)) options: #(  )