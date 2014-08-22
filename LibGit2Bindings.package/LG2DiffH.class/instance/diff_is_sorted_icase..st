foreign interface
diff_is_sorted_icase: diff 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_is_sorted_icase(LG2GitDiffO diff)) options: #(  )