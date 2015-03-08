libgit - calls
commit_message: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(String git_commit_message(self)) options: #(  )