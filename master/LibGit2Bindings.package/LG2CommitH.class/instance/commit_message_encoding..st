foreign interface
commit_message_encoding: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_commit_message_encoding(LG2GitCommitO commit)) options: #(  )