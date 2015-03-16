foreign interface
diff_free: diff 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_diff_free(LG2GitDiffO diff)) options: #(  )