foreign interface
merge_result_is_uptodate: merge_result 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_merge_result_is_uptodate(LG2GitMergeResultO merge_result)) options: #(  )