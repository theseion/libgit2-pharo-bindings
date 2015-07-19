libgit-calls
commit_message_encoding: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(String git_commit_message_encoding(self)) options: #(  )