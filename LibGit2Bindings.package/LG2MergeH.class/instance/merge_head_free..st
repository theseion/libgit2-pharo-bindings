foreign interface
merge_head_free: head 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_merge_head_free(LG2GitMergeHeadO head)) options: #(  )