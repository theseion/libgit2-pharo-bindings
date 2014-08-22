foreign interface
diff_get_delta: diff idx: idx 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_diff_delta * git_diff_get_delta(LG2GitDiffO diff, NBInt32 idx)) options: #(  )