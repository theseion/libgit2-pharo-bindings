foreign interface
commit_id: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_commit_id(LG2GitCommitO commit)) options: #(  )