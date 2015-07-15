libgit-calls
branch_is_head: branch 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_branch_is_head(self)) options: #(  )