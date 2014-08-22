foreign interface
commit_parent: ancestor commit: commit n: n 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_commit_parent(LG2GitCommitO * ancestor, LG2GitCommitO commit, NBUInt32 n)) options: #(  )