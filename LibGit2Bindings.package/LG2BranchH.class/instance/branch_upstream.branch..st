foreign interface
branch_upstream: out branch: branch 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_branch_upstream(LG2GitReferenceO * out, LG2GitReferenceO branch)) options: #(  )