foreign interface
diff_merge: onto from: from 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_merge(LG2GitDiffO onto, LG2GitDiffO from)) options: #(  )