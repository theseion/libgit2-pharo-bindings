foreign interface
diff_find_similar: diff options: options 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_find_similar(LG2GitDiffO diff, git_diff_find_options * options)) options: #(  )