libgit - calls
branch_is_head: branch 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(int git_branch_is_head(self)) options: #(  )