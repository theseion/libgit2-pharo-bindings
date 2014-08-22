foreign interface
commit_owner: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitRepositoryO git_commit_owner(LG2GitCommitO commit)) options: #(  )