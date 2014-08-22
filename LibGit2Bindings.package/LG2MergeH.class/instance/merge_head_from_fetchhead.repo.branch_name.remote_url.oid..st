foreign interface
merge_head_from_fetchhead: out repo: repo branch_name: branch_name remote_url: remote_url oid: oid 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_merge_head_from_fetchhead(LG2GitMergeHeadO * out, LG2GitRepositoryO repo, NBExternalString branch_name, NBExternalString remote_url, git_oid * oid)) options: #(  )