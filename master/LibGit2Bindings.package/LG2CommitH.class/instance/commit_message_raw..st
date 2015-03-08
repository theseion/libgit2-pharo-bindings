foreign interface
commit_message_raw: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_commit_message_raw(LG2GitCommitO commit)) options: #(  )