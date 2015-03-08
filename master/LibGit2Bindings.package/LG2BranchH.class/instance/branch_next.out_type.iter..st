foreign interface
branch_next: out out_type: out_type iter: iter 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_branch_next(LG2GitReferenceO * out, git_branch_t * out_type, LG2GitBranchIteratorO iter)) options: #(  )