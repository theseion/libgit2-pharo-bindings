foreign interface
commit_raw_header: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_commit_raw_header(LG2GitCommitO commit)) options: #(  )