foreign interface
diff_num_deltas_of_type: diff type: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_num_deltas_of_type(LG2GitDiffO diff, git_delta_t type)) options: #(  )