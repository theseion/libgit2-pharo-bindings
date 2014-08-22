foreign interface
commit_time: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_time_t git_commit_time(LG2GitCommitO commit)) options: #(  )