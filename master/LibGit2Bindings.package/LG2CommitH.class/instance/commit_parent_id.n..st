foreign interface
commit_parent_id: commit n: n 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_commit_parent_id(LG2GitCommitO commit, NBUInt32 n)) options: #(  )