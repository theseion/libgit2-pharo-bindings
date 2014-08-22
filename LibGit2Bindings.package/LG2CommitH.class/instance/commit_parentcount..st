foreign interface
commit_parentcount: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBUInt32 git_commit_parentcount(LG2GitCommitO commit)) options: #(  )