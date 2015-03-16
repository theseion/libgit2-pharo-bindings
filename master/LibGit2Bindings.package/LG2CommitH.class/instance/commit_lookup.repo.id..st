foreign interface
commit_lookup: commit repo: repo id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_commit_lookup(LG2GitCommitO * commit, LG2GitRepositoryO repo, git_oid * id)) options: #(  )