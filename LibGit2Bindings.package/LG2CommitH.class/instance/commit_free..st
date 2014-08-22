foreign interface
commit_free: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_commit_free(LG2GitCommitO commit)) options: #(  )