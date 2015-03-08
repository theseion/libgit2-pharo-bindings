foreign interface
commit_summary: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_commit_summary(LG2GitCommitO commit)) options: #(  )