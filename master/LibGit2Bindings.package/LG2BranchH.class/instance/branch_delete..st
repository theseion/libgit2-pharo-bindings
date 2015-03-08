foreign interface
branch_delete: branch 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_branch_delete(LG2GitReferenceO branch)) options: #(  )