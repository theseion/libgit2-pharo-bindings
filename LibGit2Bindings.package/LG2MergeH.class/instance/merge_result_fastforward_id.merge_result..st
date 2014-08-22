foreign interface
merge_result_fastforward_id: out merge_result: merge_result 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_merge_result_fastforward_id(git_oid * out, LG2GitMergeResultO merge_result)) options: #(  )