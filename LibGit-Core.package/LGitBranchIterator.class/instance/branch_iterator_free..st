libgit - calls
branch_iterator_free: iter 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(void git_branch_iterator_free(self)) options: #(  )