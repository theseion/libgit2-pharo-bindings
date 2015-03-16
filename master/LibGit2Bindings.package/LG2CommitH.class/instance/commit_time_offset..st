foreign interface
commit_time_offset: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_commit_time_offset(LG2GitCommitO commit)) options: #(  )