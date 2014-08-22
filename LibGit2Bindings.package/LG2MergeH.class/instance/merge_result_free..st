foreign interface
merge_result_free: merge_result 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_merge_result_free(LG2GitMergeResultO merge_result)) options: #(  )