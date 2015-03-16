foreign interface
branch_iterator_free: iter 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_branch_iterator_free(LG2GitBranchIteratorO iter)) options: #(  )