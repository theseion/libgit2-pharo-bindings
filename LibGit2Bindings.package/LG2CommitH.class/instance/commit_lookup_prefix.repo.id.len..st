foreign interface
commit_lookup_prefix: commit repo: repo id: id len: len 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_commit_lookup_prefix(LG2GitCommitO * commit, LG2GitRepositoryO repo, git_oid * id, NBInt32 len)) options: #(  )