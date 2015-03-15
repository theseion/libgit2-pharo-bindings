libgit-calls
branch_next: out out_type: out_type iter: iter 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_branch_next(LGitReference * out, LGitWriteBackValueUInt * out_type, LGitBranchIterator iter)) options: #(  )