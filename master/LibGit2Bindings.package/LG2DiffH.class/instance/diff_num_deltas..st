foreign interface
diff_num_deltas: diff 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_num_deltas(LG2GitDiffO diff)) options: #(  )