foreign interface
merge_head_from_id: out repo: repo id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_merge_head_from_id(LG2GitMergeHeadO * out, LG2GitRepositoryO repo, git_oid * id)) options: #(  )