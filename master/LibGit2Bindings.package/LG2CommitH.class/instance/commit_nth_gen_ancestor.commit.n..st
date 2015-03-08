foreign interface
commit_nth_gen_ancestor: ancestor commit: commit n: n 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_commit_nth_gen_ancestor(LG2GitCommitO * ancestor, LG2GitCommitO commit, NBUInt32 n)) options: #(  )