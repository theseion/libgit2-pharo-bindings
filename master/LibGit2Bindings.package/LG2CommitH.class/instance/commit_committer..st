foreign interface
commit_committer: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_signature * git_commit_committer(LG2GitCommitO commit)) options: #(  )