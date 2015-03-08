foreign interface
merge: out repo: repo their_heads: their_heads their_heads_len: their_heads_len opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_merge(LG2GitMergeResultO * out, LG2GitRepositoryO repo, LG2GitMergeHeadO * their_heads, NBInt32 their_heads_len, git_merge_opts * opts)) options: #(  )