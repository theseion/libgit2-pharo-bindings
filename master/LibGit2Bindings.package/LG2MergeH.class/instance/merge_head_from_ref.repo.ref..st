foreign interface
merge_head_from_ref: out repo: repo ref: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_merge_head_from_ref(LG2GitMergeHeadO * out, LG2GitRepositoryO repo, LG2GitReferenceO ref)) options: #(  )